class Stack {
  List<int> items = [];

  bool isEmpty() {
    return items.isEmpty;
  }

  void push(int item) {
    items.add(item);
  }

  int? pop() {
    if (isEmpty()) {
      print("underflow");
      return null;
    } else {
      return items.removeLast();
    }
  }

  int size() {
    return items.length;
  }
}

void deleteMiddle(Stack stack) {
  Stack tempStack = Stack();
  int middle = (stack.size() / 2).floor();
  for (int i = 0; i < middle; i++) {
    tempStack.push(stack.pop()!);
  }
  stack.pop();
  while (!tempStack.isEmpty()) {
    stack.push(tempStack.pop()!);
  }
}

void main() {
  Stack stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.push(50);
  stack.push(60);
  stack.push(70);
  print(stack.items);
  deleteMiddle(stack);
  print(stack.items);
}
