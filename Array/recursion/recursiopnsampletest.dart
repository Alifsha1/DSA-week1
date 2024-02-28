void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int result = binarysearch(arr, 4, 0, arr.length - 1);
  print(result);
}

binarysearch(List<int> arr,int tar,int leftindex,int rightindex) {
  if (leftindex > rightindex) {
    return -1;
  }
  int middleindex = ((leftindex + rightindex) / 2).floor();

  if ( tar == arr[middleindex]) {
    return middleindex;
  } else if (tar < arr[middleindex]) {
  
   return binarysearch(arr, tar, leftindex, middleindex - 1);
  } else {
   return binarysearch(arr, tar, middleindex + 1, rightindex);
  }
}


