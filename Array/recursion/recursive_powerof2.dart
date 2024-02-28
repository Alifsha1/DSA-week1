powerof2(int base, int exponent) {
  if (exponent <= 0) {
    return 1;
  }
  return base * powerof2(base, exponent - 1);
}

void main() {
  int result = powerof2(2, 5);
  print(result);
}
