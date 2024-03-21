

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
      throw Exception('list is empty');
    }
    return stackarr.removeLast();
  }

  deletenum(int tar) {
    for (int i = stackarr.length - 1; i >= 0; i--) {
      if (tar == stackarr[i]) {
        stackarr.removeAt(i);
        return;
      }
    }
    print('$tar not found');
    return;
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  print(stack.stackarr);
  print('after delete');
  stack.deletenum(4);
  print(stack.stackarr);
}
