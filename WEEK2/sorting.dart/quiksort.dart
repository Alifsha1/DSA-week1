quiksort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int pivot = arr[arr.length - 1];
  List<int> leftarr = [];
  List<int> rightarr = [];
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      leftarr.add(arr[i]);
    } else {
      rightarr.add(arr[i]);
    }
  }
  return [...quiksort(leftarr), pivot, ...quiksort(rightarr)];
}

void main() {
  List<int> arr = [8, 20, -2, 4, -6];
  List result = quiksort(arr);
  print(result);
}
