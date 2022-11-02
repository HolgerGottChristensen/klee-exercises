#include <stdio.h>
#include <stdlib.h>

int * x;
int * y;
size_t size;

extern int ace_arbiter_1 (int N, int * x, int * y);
extern int ace_arbiter_2 (int N, int * x, int * y);
extern int ace_arbiter_3 (int N, int * x, int * y);

void load()
{

  scanf("%zd", &size);

  x = calloc(size+1, sizeof(int));
  y = calloc(size+1, sizeof(int));

  for (int i = 0; i < size; i++)
    scanf("%d-%d", x + i, y + i);
}


int main(int argc, char ** argv) 
{
  load();
  int result = ace_arbiter_3 (size, x, y);

  if (result) 
    printf("error %d\n", result);
  else
    printf("ok\n");

  return 0;
}
