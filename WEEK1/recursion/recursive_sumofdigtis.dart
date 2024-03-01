sumofdigits(int n) {
  if (n < 10) {
    return n;
  }
  return n % 10 + sumofdigits((n / 10).floor());
}

void main() {
  int result = sumofdigits(123452);
  print(result);
}
