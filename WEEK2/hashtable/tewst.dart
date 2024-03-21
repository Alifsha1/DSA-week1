merge(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int mid = ((arr.length / 2).floor());
  List<int> leftarr = arr.sublist(0, mid);
  List<int> rightarr = arr.sublist(mid);
  return mergesort(merge(leftarr), merge(rightarr));
}

mergesort(List<int> leftarr, List<int> rightarr) {
  List<int> sorted = [];
  while (leftarr.isNotEmpty && rightarr.isNotEmpty) {
    if (leftarr[0] < rightarr[0]) {
      sorted.add(leftarr.removeAt(0));
    } else {
      sorted.add(rightarr.removeAt(0));
    }
  }
  return [...sorted, ...leftarr, ...rightarr];
}

void main() {
  List<int> arr = [2, -5, 7, 8, -9, 10, 22];
  List result = merge(arr);
  print(result);
}
