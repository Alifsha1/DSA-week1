bubblesort(List<int> arr) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
  return arr;
}

selectionsort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int min = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[min];
    arr[min] = temp;
  }
  return arr;
}

insertionsort(List<int> arr) {
  int notosort;
  for (int i = 1; i < arr.length - 1; i++) {
    notosort = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > notosort) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = notosort;
  }
  return arr;
}

mergesorted(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int mid = ((arr.length / 2).floor());
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);
  return merge(mergesorted(left), mergesorted(right));
}

merge(List<int> leftarr, List<int> rightarr) {
  List<int> sorted = [];
  while (leftarr.isNotEmpty && rightarr.isNotEmpty) {
    if (leftarr[0] <= rightarr[0]) {
      sorted.add((leftarr.removeAt(0)));
    } else {
      sorted.add((rightarr.removeAt(0)));
    }
  }
  return [...sorted, ...leftarr, ...rightarr];
}

quicksort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }
  int pivot = arr[arr.length - 1];
  List<int> leftarr = [];
  List<int> rightarr = [];
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      leftarr.add(arr[i]);
    } else {
      rightarr.add(arr[i]);
    }
  }
  return [...quicksort(leftarr), pivot, ...quicksort(rightarr)];
}

void main() {
  List<int> arr = [9, -5, 7, 5, -6, 4, 3];
  List result = quicksort(arr);
  print(result);
}
