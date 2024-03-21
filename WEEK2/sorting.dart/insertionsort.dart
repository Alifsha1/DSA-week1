insertionsort(List<int> arr) {
  int numbertosort;
  for (int i = 1; i < arr.length; i++) {
    numbertosort = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > numbertosort) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = numbertosort;
  }
  return arr;
}

void main() {
  List<int> arr = [-8, 22, 10, -4, 6];
  List result = insertionsort(arr);
  print(result);
}
