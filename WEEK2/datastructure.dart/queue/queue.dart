import 'dart:io';

class Node {
  int? value;
  Node? next;
  Node(this.value);
}

class Queue {
  Node? first;
  Node? last;
  enqueue(int value) {
    Node newnode = new Node(value);
    if (first == null) {
      newnode.next = first;
      first = newnode;
      last = newnode;
      return;
    }
    last!.next = newnode;
    last = newnode;
  }

  dequeue() {
    if (first == null) {
      print('no elements');
      return;
    }
    first = first!.next;
  }

  printelemrnts() {
    Node? current = first;
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
  Queue queue = new Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.enqueue(6);
  queue.printelemrnts();
  queue.dequeue();
  queue.printelemrnts();
}
