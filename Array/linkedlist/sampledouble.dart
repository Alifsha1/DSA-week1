import 'dart:io';

class Node {
  int? value;
  Node? next;
  Node? prev;
  Node(this.value);
}

class Doublelinked {
  Node? head;
  Node? tail;
  prepend(value) {
    Node newnode = new Node(value);
    if (head == null) {
      head = newnode;
      tail = newnode;
      return;
    }
    newnode.next = head;
    head!.prev = newnode;
    head = newnode;
  }

  append(value) {
    Node newnode = Node(value);
    if (head == null) {
      head = newnode;
      tail = newnode;
      return;
    }
    tail!.next = newnode;
    newnode.prev = tail;
    tail = newnode;
  }

  // insertposition(value, int pos) {
  //   Node newnode = new Node(value);
  //   if (pos < 1) {
  //     print('pos is out of range');
  //     return null;
  //   } else {
  //     Node? current = head;
  //     if (pos == 1) {
  //       head!.prev = newnode;
  //       newnode.next = head;
  //       head = newnode;
  //     } else {
  //       for (int i = 1; i < pos - 1 && current != null; i++) {
  //         current = current.next;
  //       }
  //       if (current == null) {
  //         append(value);
  //       } else {
  //         newnode.next = current.next;
  //         newnode.prev = current;
  //         current.next!.prev = newnode;
  //         current.next = newnode;
  //       }
  //     }
  //   }
  // }
  insertposition(value, int position) {
    Node newNode = Node(value);
    if (position < 1) position = 0;

    if (head == null || position == 1) {
      prepend(value);
    } else {
      Node? current = head;
      for (int i = 1; i < position - 1 && current != null; i++) {
        current = current.next;
      }

      if (current == null) {
        head = newNode;
        tail = newNode;
      } else {
        newNode.next = current.next;
        newNode.prev = current;
        current.next!.prev = newNode;
        current.next = newNode;
      }
    }
  }

  removeatfirst() {
    if (head == null) {
      print('list is empty');
      return null;
    }
    if (head == tail) {
      head = null;
      tail = null;
    } else {
      head = head!.next;
      head!.prev = null;
    }
  }

  removeatend() {
    if (head == null) {
      print('empty list');
      return null;
    }
    if (head == tail) {
      head = null;
      tail = null;
    } else {
      tail = tail!.prev;
      tail!.next = null;
    }
  }

  // remove(value) {
  //   Node remove = new Node(value);
  //   if (head == null) {
  //     print('list is empty');
  //     return;
  //   }
  //   if (head == remove) {
  //     head = head!.next;
  //     head!.prev = null;
  //   } else {
  //     Node? current = head;
  //     while (current!.next != null) {
  //       if (current.next == remove) {

  //       }
  //     }
  //   }
  // }

  void deleteByValue(value) {
    if (head == null) {
      print('List is empty, nothing to remove');
      return;
    }
    if (head!.value == value) {
      head = head!.next;
      head!.prev = null;
      return;
    }

    Node? current = head;
    while (current!.next != null && current.next!.value != value) {
      current = current.next;
    }
  }

  removeaposition(pos) {
    if (head == null && pos < 1) return null;
    if (pos == 1) {
      head = head!.next;
      head!.prev = null;
    } else {
      Node? current = head;
      for (int i = 1; i < pos && current != null; i++) {
        current = current.next;
      }
      if (current == null) {
        return null;
      }
      if (current == tail) {
        tail = tail!.prev;
        tail!.next = null;
      } else {
        current.prev!.next = current.next;
        current.next!.prev = current.prev;
      }
    }
  }

  display() {
    Node? current = head;
    while (current != null) {
      stdout.write('${current.value}\t');
      if (current.next == null) {
        print('');
      }
      current = current.next;
    }
  }

  displayreverse() {
    Node? current = tail;
    while (current != null) {
      stdout.write('${current.value}\t');
      current = current.prev;
    }
  }
}

void main() {
  Doublelinked dlinked = new Doublelinked();
  dlinked.prepend(3);
  dlinked.prepend(4);
  dlinked.prepend(5);
  dlinked.prepend(6);
 // dlinked.display();
  dlinked.append(9);
//  dlinked.display();
  dlinked.insertposition(7, 5);

  dlinked.display();
  dlinked.displayreverse();
  dlinked.removeatfirst();
 // dlinked.display();
  dlinked.removeatend();
 // dlinked.display();
  dlinked.removeaposition(3);
 // dlinked.display();
}
