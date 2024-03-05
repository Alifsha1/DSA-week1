mergesort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int mid = ((arr.length / 2).floor());
  List<int> leftarr = arr.sublist(0, mid);
  List<int> rightarr = arr.sublist(mid);
  return merge(mergesort(leftarr), mergesort(rightarr));
}

merge(List<int> leftarr, List<int> rightarr) {
  List<int> sorted = [];
  while (leftarr.isNotEmpty && rightarr.isNotEmpty) {
    if (leftarr[0] <= rightarr[0]) {
      sorted.add((leftarr.removeAt(0)));
    } else {
      sorted.add(rightarr.removeAt(0));
    }
  }
  return [...sorted, ...leftarr, ...rightarr];
}

void main() {
  List<int> arr = [5, 2, -5, -2, 8, 9, 1];
  List result = mergesort(arr);
  print(result);
}
