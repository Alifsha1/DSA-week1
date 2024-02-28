import 'dart:io';

class Node {
  int? value;
  Node? next;
  Node(this.value);
}

class SLinked {
  Node? head;

  bool isEmpty() {
    return head == null;
  }

  append(value) {
    Node newnode = new Node(value);
    if (head == null) {
      head = newnode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newnode;
  }

  prepend(value) {
    Node newnode = new Node(value);
    if (head == null) {
      head = newnode;
      return;
    }
    newnode.next = head;
    head = newnode;
  }

  merge(SLinked list1, SLinked list2) {
    if (list1.head == null || list2.head == null) {
      return;
    }
    Node? current = list1.head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = list2.head;
  }

  insert(int val, int pos) {
    if (pos < 1) {
      print('position is out of range');
      return;
    }
    if (pos == 1) {
      prepend(val);
    }
    Node newnode = new Node(val);
    Node? current = head;
    for (int i = 1; i < pos - 1; i++) {
      if (current!.next == null) {
        print('pos is out of range');
        return;
      }
      current = current.next;
    }
    newnode.next = current!.next;
    current.next = newnode;
  }
  removeavalue(){}

  displaynode() {
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? current = head;
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
  SLinked linkedl = new SLinked();
  linkedl.append(4);
  linkedl.append(5);
  linkedl.append(6);
  linkedl.append(7);
  linkedl.append(8);
  linkedl.prepend(1);
  linkedl.displaynode();
  SLinked linkedl2 = new SLinked();
  linkedl2.append(7);
  linkedl2.append(8);
  linkedl2.append(9);
  linkedl2.append(10);
  linkedl2.append(11);
  linkedl2.prepend(1);
  linkedl2.displaynode();
  linkedl.merge(linkedl, linkedl2);
  linkedl.displaynode();
  linkedl.insert(13, 3);
  linkedl.displaynode();

}
