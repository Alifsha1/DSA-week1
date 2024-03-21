import 'dart:io';

class Node {
  int? value;
  Node? next;
  Node(this.value);
}

class Queue {
  Node? first;
  Node? last;
  enqueue(value) {
    Node newnode = Node(value);
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
      print('list is empty');
      return;
    }
    first = first!.next;
  }

  printlist() {
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
  Queue queue = Queue();
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.enqueue(6);
  queue.enqueue(7);
  queue.printlist();
  queue.dequeue();
  queue.printlist();
}
