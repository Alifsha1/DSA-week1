List<int> sumoftwO(List<int> arr, int target) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] == target) {
        return [arr[i], arr[j]];
      }
    }
  }
  return [0];
}

void main() {
  
  List<int> sumoftwo = sumoftwO([1, 2, 3, 4, 5, 6, 7], 10);
  print(sumoftwo);
}
