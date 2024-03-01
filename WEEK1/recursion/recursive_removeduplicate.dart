removeduplicates(List<int> arr, int index) {
  if (index <= 0) {
    return arr;
  }
  if (arr.indexOf(arr[index]) < index) {
    arr.removeAt(index);
  }
  return removeduplicates(arr, index - 1);
}



void main() {
  List<int> arr = [1, 2, 3, 2, 4, 5, 5, 6, 7, 7, 8];
  List duplictatedremoved = removeduplicates(arr, arr.length - 1);
  print(duplictatedremoved);
 
}
