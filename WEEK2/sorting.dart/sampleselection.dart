sampleselectionsort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minindex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minindex]) {
        minindex = j;
      }
    }
     int temp = arr[i];
      arr[i] = arr[minindex];
      arr[minindex] = temp;
  }
  return arr;
}

void main() {
  List<int> arr = [22, 40, -12, 55, -2, 1, 9];
  List result = sampleselectionsort(arr);
  print(result);
}
