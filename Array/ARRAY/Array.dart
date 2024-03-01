void main() {
  List<int> sumoftwo = twOnumbersum([1, 9, 8, 4, 5, 6, 7], 10);
  // List<int>
  print(sumoftwo);
}

// List<int> twOnumbersum(List<int> arr, int target) {
//   for (int i = 0; i < arr.length - 1; i++) {
//     for (int j = i + 1; j < arr.length; j++) {
//       if (arr[i] + arr[j] == target) {
//         return [arr[i], arr[j]];
//       }
//     }
//   }
//   return [0];
// }
//another method--------

List<int> twOnumbersum(List<int> arr, int target) {
  Set<int> newset = Set();
  for (int i = 0; i < arr.length; i++) {
    int num = arr[i];
    int match = target - num;
    if (newset.contains(match)) {
      return [num, match];
    } else {
      newset.add(num);
    }
  }
  return [];
}

appendelement(List<int> arr, int val) {
  arr.add(val);
  return arr;
}

prepend(List<int> arr, int val) {
  arr.insert(0, val);
  return val;
}

removeatfirst(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    arr[i] = arr[i + 1];
  }
  arr.length = arr.length - 1;
  return arr;
}

removefromlast(List<int> arr) {
  arr.length = arr.length - 1;
  return arr;
}

findindex(List<int> arr, int tar) {
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] == tar) {
      return i;
    }
  }
  return -1;
}
