import 'dart:io';

class Node {
  int? value;
  Node? next;
  Node(this.value);
}

class Stack {
  Node? top;
  push(int value) {
    Node newnode = new Node(value);
    if (top == null) {
      top = newnode;
      return;
    }
    newnode.next = top;
    top = newnode;
  }

  pop() {
    if (top == null) {
      print('no elements in the stack');
      return;
    }
    top = top!.next;
  }

  printvalue() {
    Node? current = top;
    while (current != null) {
      stdout.write('${current.value}\t');
      if (current.next == null) {
        print('');
      }
      current = current.next;
    }
  }
}

void main() {
  Stack stack = new Stack();
  stack.push(5);
  stack.push(6);
  stack.push(5);
  stack.push(3);
  stack.push(2);
  stack.push(1);
  stack.printvalue();
  stack.pop();
  stack.printvalue();
  stack.pop();
  stack.printvalue();
}
