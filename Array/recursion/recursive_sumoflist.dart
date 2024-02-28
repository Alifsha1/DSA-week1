sumoflist(List<int> arr, int index) {
  if (index == arr.length) {
    return 0;
  }
  return arr[index] + sumoflist(arr, index + 1);
}

void main() {
  List<int> arr = [1, 4, 5, 7, 8, 9, 10];
  int result = sumoflist(arr, 0);
  print(result);
}
