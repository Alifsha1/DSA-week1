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
  List<int> arr = [-6, 20, 8, -2, 4];
  List result = insertionsort(arr);
  print(result);
}
