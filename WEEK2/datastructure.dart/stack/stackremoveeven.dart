class Stack {
  List<int> items = [];

  void push(int item) {
    items.add(item);
  }

  bool isEmpty() {
    return items.isEmpty;
  }

  int pop() {
    return items.removeLast();
  }
}

Stack removeEvenNumbers(Stack stack) {
  Stack tempStack = Stack();
  while (!stack.isEmpty()) {
    int item = stack.pop();
    if (item % 2 == 0) {
      tempStack.push(item);
    }
  }
  while (!tempStack.isEmpty()) {
    stack.push(tempStack.pop());
  }
  return stack;
}

void main() {
  Stack stack = Stack();
  stack.push(10);
  stack.push(1);
  stack.push(21);
  stack.push(5);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.push(50);
  stack.push(60);
  stack.push(70);
  print(removeEvenNumbers(stack).items);
}
