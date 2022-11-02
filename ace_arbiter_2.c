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
