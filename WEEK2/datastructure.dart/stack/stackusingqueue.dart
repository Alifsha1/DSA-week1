import 'dart:collection';

class Stack {
  Queue<int> queue1 = Queue<int>();
  Queue<int> queue2 = Queue<int>();

  void push(int item) {
    while (queue1.isNotEmpty) {
      queue2.add(queue1.removeFirst());
    }
    queue1.add(item);
    while (queue2.isNotEmpty) {
      queue1.add(queue2.removeFirst());
    }
  }

  int pop() {
    return queue1.removeFirst();
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
}