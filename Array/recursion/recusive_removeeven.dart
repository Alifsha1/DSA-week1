removeeven(List<int> arr, int index) {
  if (index < 0) {
    return arr;
  }
  if (arr[index] % 2 == 0) {
    arr.removeAt(index);
  }
  return removeeven(arr, index - 1);
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List result = removeeven(arr, arr.length - 1);
  print(result);
}
