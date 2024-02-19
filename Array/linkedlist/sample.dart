import 'dart:io';

// class Node {
//   int? value;
//   Node? next;
//   Node(this.value);
// }

// class SLinkedlist {
//   Node? head;
//   bool isEmpty() {
//     return head == null;
//   }

//   void prepend(value) {
//     Node newnode = Node(value);
//     if (head == null) {
//       head = newnode;
//       return;
//     }
//     newnode.next = head;
//     head = newnode;
//   }

//   int getsize() {
//     int count = 0;
//     Node? temp = head;
//     while (temp != null) {
//       count++;
//       temp = temp.next;
//     }
//     return count;
//   }

//   void printlist() {
//     Node? temp = head;
//     while (temp != null) {
//       stdout.write('${temp.value}\t');
//       if (temp.next == null) {
//         print('');
//       }
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   SLinkedlist linkedlist = new SLinkedlist();
//   linkedlist.prepend(5);
//   linkedlist.printlist();
//   linkedlist.prepend(2);
//   linkedlist.printlist();
//   print('${linkedlist.getsize()}');
// }

class Node {
  int? value;
  Node? next;
  Node(this.value);
}

class Slinked {
  Node? head;
  bool isEmpty() {
    return head == null;
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

  void append(value) {
    Node newmode = new Node(value);
    if (head == null) {
      head == newmode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newmode;
  }

  // removevalue(value) {
  //   if (isEmpty()) {
  //     print('List is empty');
  //     return null;
  //   } else {
  //     if (head == value) {
  //       head = head!.next;
  //       return value;
  //     } else {
  //       Node? current = head;
  //       Node? remove;
  //       while (current!.next != null && current.next!.value != value) {
  //         current = current.next;
  //       }
  //       if (current.next != null) {
  //         remove = current.next;
  //         current.next = remove!.next;
  //         return value;
  //       }
  //       print('value not found');
  //       return null;
  //     }
  //   }
  // }

  removevalue(value) {
    if (isEmpty()) {
      print('List is empty');
      return null;
    } else {
      if (head == value) {
        head = head!.next;
        return value;
      } else {
        Node? temp = head;
        Node? remove;
        while (temp!.next != null && temp.next!.value != value) {
          temp = temp.next;
        }
        if (temp.next != null) {
          remove = temp.next;
          temp.next = remove!.next;

          return value;
        }
        print('value not found');
        return null;
      }
    }
  }

  // void printlist() {
  //   Node? temp = head;
  //   while (temp != null) {
  //     stdout.write('${temp.value}\t');

  //     temp = temp.next;

  //     if (temp == null) {
  //       print('');
  //     }
  //   }
  // }

  insertatposition(value, position) {
    Node newnode = new Node(value);
    if (position < 1) {
      print('out of range');
      return null;
    } else {
      if (position == 1) {
        // prepend(value);
        // return value;
        newnode.next = head;
        head = newnode;
      } else {
        Node? current = head;
        for (int i = 1; i < position - 1; i++) {
          if (current!.next == null) {
            print('position out of range');
            return null;
          }
          current = current.next;
        }
        newnode.next = current!.next;
        current.next = newnode;
      }
    }
  }

  removeatposition(pos) {
    if (pos < 1) {
      print('position out of range');
      return null;
    } else {
      Node? removenode;
      Node? current = head;
      if (pos == 1) {
        removenode = head;
        head = removenode!.next;
      } else {
        for (int i = 1; i < pos - 1; i++) {
          if (current!.next == null) {
            print('position out of range');
            return null;
          }
          current = current.next;
        }
        removenode = current!.next;
        current.next = removenode!.next;
      }
      return removenode.value;
    }
  }



  printlist() {
    Node? temp = head;
    if (temp == null) {
      print('list is empty');
      return null;
    } else {
      while (temp != null) {
        stdout.write('${temp.value}\t');
        temp = temp.next;
        if (temp == null) {
          print('');
        }
      }
    }
  }
}

void main() {
  Slinked linked = new Slinked();
  linked.prepend(4);
  linked.printlist();
  linked.prepend(5);
  linked.prepend(7);
  linked.append(6);
  linked.printlist();
  linked.insertatposition(9, 3);
  linked.printlist();
  linked.removevalue(4);
  linked.printlist();
   linked.removeatposition(4);
  
  linked.printlist();
}
