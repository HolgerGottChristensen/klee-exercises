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
int ace_arbiter_1 (int n, int* x, int* y)
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
