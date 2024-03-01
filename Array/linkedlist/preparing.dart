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
    // printlistrecursive(head);
  }

  removeavalue(int value) {
    if (head == null) {
      print('list is empty');
      return;
    }
    if (head!.value == value) {
      head = head!.next;
      return value;
    }
    Node? current = head;
    while (current!.next!.value != value && current.next != null) {
      current = current.next;
    }
    current.next = current.next!.next;
  }

  removeposition(int pos) {
    if (pos < 1) {
      print('invalid position');
      return;
    }
    if (pos == 1) {
      head = head!.next;
      return;
    }
    Node? current = head;
    for (int i = 1; i < pos - 1; i++) {
      if (current!.next == null) {
        print('out of position');
        return;
      }
      current = current.next;
    }
    current!.next = current.next!.next;
  }

  search(value) {
    if (head == null) {
      print('list is empty');
      return;
    }
    Node? current = head;
    int i = 0;
    while (current != null) {
      if (current.value == value) {
        print('value found at position');
        return i;
      } else {
        current = current.next;
        i++;
      }
    }
    print('value not found');
    return -1;
  }

  removeeven() {
    if (head == null) {
      print('list is empty');
      return null;
    }
    if (head!.value! % 2 == 0) {
      head = head!.next;
    }
    Node? current = head;
    while (current!.next != null) {
      if (current.next!.value! % 2 == 0) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }

  getsize() {
    if (head == null) {
      print('list is empty');
      return;
    }
    int count = 0;
    Node? current = head;
    while (current != null) {
      count++;
      current = current.next;
    }
    return count;
  }

  arrtolinked(List<int> arr) {
    for (var elements in arr) {
      append(elements);
    }
  }

  reverse() {
    Node? prev;
    Node? current = head;
    while (current != null) {
      Node? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }

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

  printlistrecursive(Node? current) {
    if (current == null) {
      print('');
      return;
    }
    stdout.write('${current.value}');
    printlistrecursive(current.next);
  }

  removeduplicates() {
    if (isEmpty()) {
      print('list is empty');
      return;
    }
    Node? current = head;
    for (var i = 0; current!.next!.next != null; i++) {
      if (current.value == current.next!.value) {
        current.next = current.next!.next;
      }
      current = current.next;
    }
    if (current.value == current.next!.value) {
      current.next = current.next!.next;
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
  linkedl.removeavalue(13);
  linkedl.displaynode();
  linkedl.removeposition(9);
  linkedl.displaynode();
  linkedl.removeduplicates();
  linkedl.displaynode();

  print(linkedl.search(10));
  linkedl.reverse();
  linkedl.displaynode();
  linkedl.removeeven();
  linkedl.displaynode();
  print(linkedl.getsize());
  List<int> arr = [1, 2, 3, 4, 5, 6, 7];
  SLinked linked3 = new SLinked();
  linked3.arrtolinked(arr);
  linked3.displaynode();
  SLinked linked4 = new SLinked();
  linked4.append(1);
  linked4.append(1);
  linked4.append(2);
  linked4.append(2);
  linked4.append(3);
  linked4.append(4);
  linked4.append(5);
  linked4.append(5);
  linked4.displaynode();
  linked4.removeduplicates();
  linked4.displaynode();
}
