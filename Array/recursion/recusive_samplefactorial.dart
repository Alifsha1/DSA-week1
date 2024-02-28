// void main() {
//   int result = factorial(5);
//   print(result);
//   int resultt = fibanocci(10);
//   print(resultt);
//   int summ = sum(16);
//   print(summ);
//   String orginal = "alifsha";
//   String reverse = reversestring(orginal);
//   print(orginal);
//   print(reverse);

//   List<int> arr = [1, 2, 3, 4, 5, 6];
//   int sumoflistt = sumoflist(arr, 0);
//   print(sumoflistt);
//    int power = powerof2(2, 5);
//    print(power);
//      List myList = [1, 2,5, 2, 3,3, 4, 5];
//    List results = removeDuplicates(myList,myList.length - 1);
//    print(results); // Output: [1, 2, 3, 4, 5]
//     List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   print(removeEven(array, array.length-1)); // Output: [1, 3, 5, 7, 9]
//     print(sumOfDigits(1234));
// }

// factorial(n) {
//   if (n <= 1) {
//     return n;
//   }
//   return n * factorial(n - 1);
// }
// // void main() {
// //   int result = fibanocci(10);
// //   print(result);
// // }

// fibanocci(n) {
//   if (n <= 1) {
//     return n;
//   }
//   return fibanocci(n - 1) + fibanocci(n - 2);
// }

// sum(n) {
//   if (n <= 1) {
//     return n;
//   }
//   return n + sum(n - 1);
// }

// reversestring(String str) {
//   if (str.isEmpty) {
//     return str;
//   }
//   return reversestring(str.substring(1)) + str[0];
// }

// // sumoflist(List<int> arr) {
// //   int sum = 0;
// //   if (arr.length <= 0) {
// //     return sum;
// //   }

// // }
// sumoflist(List<int> arr, int index) {
//   if (index == arr.length) {
//     return 0;
//   }
//   return arr[index] + sumoflist(arr, index + 1);
// }

// powerof2(base, exponent) {
//   if (exponent == 0) {
//     return 1;
//   }
//   return base * (powerof2(base, exponent-1));
// }
// List removeDuplicates(List arr,int index) {
//   if (index <= 0) {
//     return arr;
//   }

//   print(arr.indexOf(arr[index]));
//   if (arr.indexOf(arr[index]) < index) {
//     arr.removeAt(index);
//   }

//   return removeDuplicates(arr, index - 1);
// }

// List<int> removeEven(List<int> arr, int index) {

//   if (index < 0) {
//     return arr;
//   }

//   if (arr[index] % 2 == 0) {
//     arr.removeAt(index);
//   }

//   return removeEven(arr, index - 1);
// }
// int sumOfDigits(int num) {
//   if (num < 10) {
//     return num;
//   }
//   return num % 10 + sumOfDigits((num / 10).floor());
// }

factorial(n) {
  if (n <= 1) {
    return n;
  }
  return n * factorial(n - 1);
}

fibanocci(n) {
  if (n <= 1) {
    return n;
  }
  return fibanocci(n - 1) + fibanocci(n - 2);
}

powerof2(int base, int exponent) {
  if (exponent <= 0) {
    return 1;
  }
  return base * powerof2(base, exponent - 1);
}

removeduplicates(List<int> arr, int index) {
  if (index <= 0) {
    return arr;
  }
  if (arr.indexOf(arr[index]) < index) {
    arr.removeAt(index);
  }
  return removeduplicates(arr, index - 1);
}

reversestring(String str) {
  if (str.isEmpty) {
    return str;
  }
  return reversestring(str.substring(1)) + str[0];
}

sum(n) {
  if (n <= 0) {
    return n;
  }
  return n + sum(n - 1);
}

sumoflist(List<int> arr, int index) {
  if (index == arr.length) {
    return 0;
  }
  return arr[index] + sumoflist(arr, index + 1);
}

sumofdigits(int n) {
  if (n < 10) {
    return n;
  }
  return n % 10 + sumofdigits((n / 10).floor());
}

removeodd(List<int> arr, int index) {
  if (index >= arr.length) {
    return arr;
  }
  if (arr[index] % 2 != 0) {
    arr.removeAt(index);
  } else {
    index++;
  }
  return removeodd(arr, index + 1);
}

removeeven(List<int> arr, int index) {
  if (index < 0) {
    return arr;
  }
  if (arr[index] % 2 == 0) {
    arr.removeAt(index);
  }
  return removeeven(arr, index - 1);
}

binerysearch(List<int> arr, int tar, int leftindex, int rightindex) {
  if (leftindex > rightindex) {
    return -1;
  }
  int middleindex = ((leftindex + rightindex) / 2).floor();
  if (tar == arr[middleindex]) {
    return middleindex;
  } else if (tar < middleindex) {
    return binerysearch(arr, tar, leftindex, middleindex - 1);
  } else {
    return binerysearch(arr, tar, middleindex + 1, rightindex);
  }
}

void main() {
  int fact = factorial(5);
  print(fact);
  int fiban = fibanocci(20);
  print(fiban);
  int power = powerof2(2, 5);
  print(power);
  List<int> arr1 = [1, 2, 3, 4, 3, 5, 4, 6, 7, 6, 8, 9];
  List removeddupli = removeduplicates(arr1, arr1.length - 1);
  print(removeddupli);
  String orginal = "alifsha";
  String reversed = reversestring(orginal);
  print(orginal);
  print(reversed);
  int sumof = sum(5);
  print(sumof);
  List<int> arr2 = [1, 2, 3, 4, 5, 6, 7];
  int sumofli = sumoflist(arr2, 0);
  print(sumofli);
  int sumofdi = sumofdigits(12345);
  print(sumofdi);
  List<int> arr3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List oddnuo = removeodd(arr3, 0);
  print(oddnuo);
  List<int> arr4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List evenno = removeeven(arr4, arr4.length - 1);
  print(evenno);
  List<int> arr5 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
  int searchbinery = binerysearch(arr5, 10, 0, arr5.length - 1);
  print(searchbinery);
}
