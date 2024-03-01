// removeodd(List<int> arr, int index) {
//   if (index < 0) {
//     return arr;
//   }
//   if (arr[index] % 2 != 0) {
//     arr.removeAt(index);
//   }
//   return removeodd(arr, index - 1);
// }
removeodd(List<int> arr, int index) {
  if (index == arr.length) {
    return arr;
  }
  if (arr[index] % 2 != 0) {
    arr.removeAt(index);
  } else {
    index++;
  }
  return removeodd(arr, index + 1);
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List result = removeodd(arr, 0);
  print(result);
}
