import 'dart:collection';

class Stack {
  Queue<int> queue1 = Queue<int>();
  // Queue<int> queue2 = Queue<int>();

  void push(int item) {
    queue1.add(item);
  }

  int pop() {
    return queue1.removeLast();
  }

  display() {
    print(queue1.toString());
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.display();
  stack.pop();
  stack.display();
  // print(stack.pop());
  // print(stack.pop());
  // print(stack.pop());
  // print(stack.pop());
  // print(stack.pop());
}
