#include <stdio.h>
#include <stdlib.h>

#define DEBUG 0

#define A 0
#define B 1

#define False 0
#define True  1

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
