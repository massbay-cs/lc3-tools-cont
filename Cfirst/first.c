int main(void) {
   int a = 3, b = 2;
   int c = sum(a,b);
   return c;
}
int sum(int n2, int n1) {
  int s1 = 9;
  int s2 = 7;
  int sum = s1 + s2;
  int answer = n1 + n2 - sum;
  return answer;
}
