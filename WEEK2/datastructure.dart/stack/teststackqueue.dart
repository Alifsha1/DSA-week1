import 'dart:collection';

class Stack {
  Queue<int> queue = Queue<int>();
  push(int value) {
    queue.add(value);
  }

  pop() {
    return queue.isEmpty?null: queue.removeLast();
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
}
