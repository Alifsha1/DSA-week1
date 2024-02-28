// void main() {
//   int fact = factorial(5);
//   print(fact);
//   int sumof = sum(5);
//   print(sumof);
//   List<int> arr = [4, 6, 8, 9, 5];
//   int sumoflist1 = sumoflist(arr, 0);
//   print(sumoflist1);
//   List<int> arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
//   int binery = binerysearch1(arr1, 5, 0, arr1.length - 1);
//   print(binery);
//   int fibanoci = fibanocci(6);
//   print(fibanoci);
//   String orginalstring = "alifsha";
//   String reversed = reversestring(orginalstring);
//   print(orginalstring);
//   print(reversed);
//   int power = powerof2(2, 5);
//   print(power);
//   List<int> arr2 = [1, 2, 3, 4, 2, 2, 5, 6, 7, 7, 8, 9];
//   List removeduplicatee = removeduplicates(arr2, arr2.length - 1);
//   print(removeduplicatee);
//   print(removeodd(arr2, 0));
//   List<int> arr3 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   print(removeeven(arr3, arr3.length - 1));
// }

// factorial(n) {
//   if (n <= 1) {
//     return n;
//   }
//   return n * factorial(n - 1);
// }

// sum(n) {
//   if (n <= 1) {
//     return n;
//   }
//   return n + sum(n - 1);
// }

// sumoflist(List<int> arr, int index) {
//   if (index == arr.length) {
//     return 0;
//   }
//   return arr[index] + sumoflist(arr, index + 1);
// }

// binerysearch1(List<int> arr, int tar, int leftindex, int rightindex) {
//   if (leftindex > rightindex) {
//     return -1;
//   }
//   int middleindex = ((leftindex + rightindex) / 2).floor();
//   if (tar == arr[middleindex]) {
//     return middleindex;
//   } else if (tar < arr[middleindex]) {
//     return binerysearch1(arr, tar, leftindex, middleindex - 1);
//   } else {
//     return binerysearch1(arr, tar, middleindex + 1, rightindex);
//   }
// }

// fibanocci(n) {
//   if (n <= 1) {
//     return n;
//   }
//   return fibanocci(n - 1) + fibanocci(n - 2);
// }

// reversestring(String str) {
//   if (str.isEmpty) {
//     return str;
//   }
//   return reversestring(str.substring(1)) + str[0];
// }

// powerof2(int base, int exponent) {
//   if (exponent == 0) {
//     return 1;
//   }
//   return base * powerof2(base, exponent - 1);
// }

// removeduplicates(List<int> arr, int index) {
//   if (index <= 0) {
//     return arr;
//   }
//   if (arr.indexOf(arr[index]) < index) {
//     arr.removeAt(index);
//   }
//   return removeduplicates(arr, index - 1);
// }

// removeeven(List<int> arr, int index) {
//   if (index < 0) {
//     return arr;
//   }
//   if (arr[index] % 2 == 0) {
//     arr.removeAt(index);
//   }
//   return removeeven(arr, index - 1);
// }

// removeodd(List<int> arr, int index) {
//   if (index >= arr.length) {
//     return arr;
//   }
//   if (arr[index] % 2 != 0) {
//     arr.removeAt(index);
//   } else {
//     index++;
//   }
//   return removeodd(arr, index + 1);
// }
