import 'dart:collection';

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
  HashSet<int> newset = HashSet();
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
