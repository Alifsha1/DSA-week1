class Stack {
  List<int> stackarr = [];
  push(int value) {
    stackarr.add(value);
  }

  List<int> findeven() {
    List<int> even = [];
    for (int i = stackarr.length - 1; i >= 0; i--) {
      if (stackarr[i] % 2 == 0) {
        even.add(stackarr[i]);
      }
    }
    return even;
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(6);
  print(stack.stackarr);
  List<int> even = stack.findeven();
  print(even);
}
