//
// Created by Holger Christensen on 02/11/2022.
//

#include <stdio.h>
#include <stdlib.h>
#include <klee/klee.h>
#include <libc.h>

#define DEBUG 0

#define A 0
#define B 1

#define False 0
#define True  1

int serves (int sum)
{
    int r = (sum+1) % 4;
    if (r == 0 || r == 1)
        return 0;
    else return 1;
}


int same_player (int sum1, int sum2)
{
    return serves(sum1) == serves(sum2);
}

int legal (int i, int * x, int * y)
{
    const int x1 = x[i];
    const int y1 = y[i];
    const int x2 = x[i+1];
    const int y2 = y[i+1];
    const int same = same_player(x1+y1, x2+y2);

    return (x1+y1 <= x2+y2)
           && (x1!=11 || y1!=11)
           && (x2!=11 || y2!=11)
           && (!( same && x1 == 11) || y1 == y2)
           && (!( same && y1 == 11) || x1 == x2)
           && (!(!same && x1 == 11) || y1 == x2)
           && (!(!same && y1 == 11) || x1 == y2)
           && (!same || (x2 >= x1 && y2 >= y1))
           && ( same || (x2 >= y1 && y2 >= x1));
}


// Assume that there is N+1 spaces in the arrays x and y
int ace_arbiter_1 (int n, int * x, int * y)
{
    for (int i = n; i > 0; i--) {
        x[i] = x[i-1];
        y[i] = y[i-1];
    }
    x[0] = y[0] = 0;

    for (int i = 0; i <= n-1; i++)
        if (!legal(i, x, y))
            return i+1; // error

    return 0; // ok
}

int playerTurn (int a, int b)
{
    int m = a + b % 4;
    return m == 3 || m == 0;
}


int run (int a, int b, int num, int endGame, int i, int n, int * x, int * y)
{
    if (i == n)
        return 0; // ok
    else if (x[i] == 11 && y[i] == 11)
        return num; // error
    else if (a == x[i] && b == y[i])
        return run(a, b, num+1, endGame, i+1, n, x, y);
    else if (x[i] + y[i] <= a + b || endGame)
        return num; // error

    int cond =
            (playerTurn(a, b) == playerTurn(x[i], y[i])) ?
            (a <= x[i] && b <= y[i]) : (a <= y[i] && b <= x[i]);

    if (cond)
        return run(x[i], y[i], num+1, endGame || x[i] == 11 || y[i] == 11, i+1, n, x, y);
    else
        return num; // error
}

// Assume that there is n+1 spaces in the arrays x and y
// This implementation should not use the extra space though
int ace_arbiter_2 (int n, int * x, int * y)
{
    return run (0, 0, 1, 0, 0, n, x, y);
}



int who_serves(int s)
{
    s = s+1;
    int player;
    if (s%4==0 || s%4==1)
        player = A;
    if (s%4==2 || s%4==3)
        player = B;
    return player;
}


// Assume that there is n+1 spaces in the arrays x and y
int ace_arbiter_3(int n, int * x, int * y)
{
    int bool_same_player;

    // xy_list.insert(0, "0-0")
    for (int i = n; i > 0; i--) {
        x[i] = x[i-1];
        y[i] = y[i-1];
    }
    x[0] = y[0] = 0;
    n = n+1;

    int bool_error = False;
    int row = 0;

    for (int i = 0; i < n-1; i++) {
        int x1 = x[i];
        int y1 = y[i];
        int x2 = x[i+1];
        int y2 = y[i+1];
        if (DEBUG)
            printf("%d-%d and %d-%d\n", x1, y1, x2, y2);

        int s1 = x1+y1;
        int s2 = x2+y2;
        int p1 = who_serves(s1);
        int p2 = who_serves(s2);
        if (DEBUG)
            printf("- players: %d-%d\n", p1, p2);
        bool_same_player = (p1==p2);

        if ((x1>11 || y1>11) || (x1==11 && y1==11)) {
            bool_error=True;
            row=i;
            break;
        }
        if ((x2>11 || y2>11) || (x2==11 && y2==11)) {
            bool_error=True;
            row=i+1;
            break;
        }
        if (!bool_same_player)
            if ((x1==11 && y1!=x2) || (y1==11 && x1!=y2)) {
                bool_error=True;
                row = i+1;
                break;
            }
        if (bool_same_player)
            if ((x1==11 && y1!=y2) || (y1==11 && x1!=x2)) {
                bool_error=True;
                row = i+1;
                break;
            }
        if (s2<s1) {
            row=i+1;
            bool_error=True;
            break;
        }
        if (bool_same_player) {
            if (x2<x1 || y2<y1) {
                row =i+1;
                bool_error=True;
                break;
            }
        } else {
            if (x2<y1 || y2<x1) {
                row=i+1;
                bool_error=True;
                break;
            }
        }
    }

    if (bool_error)
        return row;
    else
        return 0; // ok
}

int main() {
    int a;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_assume(1 <= a && a <= 4);

    int x[100];
    int y[100];

    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");

    for (int i = 0; i < a; ++i) {
        klee_assume(x[i] >= 0 && x[i] <= 11);
        klee_assume(y[i] >= 0 && y[i] <= 11);
    }

    int x2[100];
    int y2[100];

    memcpy(x2, x, sizeof(x));
    memcpy(y2, y, sizeof(y));

    int arb1 = ace_arbiter_1(a, x, y);
    int arb2 = ace_arbiter_2(a, x2, y2);

    if (klee_is_replay()) {
        printf("adoawd");
    }
    klee_assume(arb1 == arb2);

    return 0;
}
