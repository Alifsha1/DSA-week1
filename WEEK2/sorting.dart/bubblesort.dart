bubblesort(List<int> arr) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped == true);
  return arr;
}

void main() {
  List<int> arr = [20, 2, -20, 5, -2, -6, 10];
  List sorted = bubblesort(arr);
  print(sorted);
}
