#define N 16
typedef int fix_matrix[N][N];
int fic_prod_ele_opt ( \
  fix_matrix A,fix_matrix B,\
  long i,long k)
{
  int *Aptr = &A[i][0];
  int *Bptr = &B[0][k];
  int *Bend = &B[N][k];
  int result = 0;
  do{
    result += *Aptr * *Bptr;
    Aptr ++;
    Bptr += N;
  }while(Bptr != Bend);
}