//binerysearch
// void main() {
//   int result = binarySearch([1, 3, 4, 5, 7, 8, 9, 10], 10);
//   print(result);
// }

// binarySearch(List<int> arr, target) {
//   int leftIndex = 0;
//   int rightIndex = arr.length - 1;

//   while (leftIndex <= rightIndex) {
//     int middleIndex = ((leftIndex + rightIndex) / 2).floor();
//     if (target == arr[middleIndex]) {
//       return middleIndex;
//     } else if (target < arr[middleIndex]) {
//       rightIndex = middleIndex - 1;
//     } else {
//       leftIndex = middleIndex + 1;
//     }
//   }
//   return -1;
// }

void main() {
  int result = binery([1, 3, 5, 7, 8, 9, 10, 11], 10);
  print(result);
}

binerysearch(List<int> arr, int target) {
  // arr.sort();
  // print(arr);
  int leftindex = 0;
  int rightindex = arr.length - 1;
  while (leftindex <= rightindex) {
    int middleindex = ((leftindex + rightindex) / 2).floor();
    if (target == arr[middleindex]) {
      return middleindex;
    } else if (target < arr[middleindex]) {
      rightindex = middleindex - 1;
    } else {
      leftindex = middleindex + 1;
    }
  }
  return -1;
}

binery(List<int> arrr, int tar) {
//  arrr.sort();
  int left = 0;
  int right = arrr.length - 1;
  while (left <= right) {
    int middle = ((left + right) / 2).floor();
    if (tar == arrr[middle]) {
      return middle;
    } else if (tar < arrr[middle]) {
      right = middle - 1;
    } else {
      left = middle + 1;
    }
  }
  return -1;
}
