class Stack {
  List<int> stackarr = [];
  push(int value) {
    stackarr.add(value);
  }

  bool isEmpty() {
    return stackarr.isEmpty;
  }

  pop() {
    if (isEmpty()) {
      throw Exception('List is empty');
    }
    return stackarr.removeLast();
  }

  removeduplicate() {
    Set<int> unique = {};
    List<int> result = [];
    for (int i = stackarr.length - 1; i >= 0; i--) {
      int current = stackarr[i];
      if (!unique.contains(current)) {
        result.add(current);
        unique.add(current);
      }
    }
    stackarr = result.reversed.toList();
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(1);
  stack.push(4);
  stack.push(5);
  print(stack.stackarr);
  stack.removeduplicate();
  print(stack.stackarr);
}
