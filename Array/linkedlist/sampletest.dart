// import 'dart:io';

// class Node {
//   int? value;
//   Node? next;
//   Node(this.value);
// }

// class Slinked {
//   Node? head;
//   int count = 0;

//   prepend(int value) {
//     Node newnode = Node(value);
//     if (head == null) {
//       head = newnode;
//       return;
//     }
//     newnode.next = head;
//     head = newnode;
//   }

//   occurance(tar) {
//     Node? current = head;
//     if (head == null) {
//       return null;
//     } else {
//       while (current != null) {
//         if (current.value == tar) {
//           count++;
//         }
//         current = current.next;
//       }
//       return count;
//     }
//   }

//   printlist() {
//     Node? current = head;
//     while (current != null) {
//       stdout.write('${current.value}\t');
//       if (current.next == null) {
//         print('');
//       }
//       current = current.next;
//     }
//   }
// }

// void main() {
//   Slinked linked = new Slinked();

//   linked.prepend(4);
//   linked.prepend(5);
//   linked.prepend(6);
//   linked.prepend(7);
//   linked.prepend(4);
//   linked.printlist();
//   var a = linked.occurance(10);
//   print(a);
// }

import 'dart:io';

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

  prepend(val) {
    Node newnode = Node(val);
    if (head == null) {
      head = newnode;
      return;
    }
    newnode.next = head;
    head = newnode;
  }

  insert(val, pos) {
    Node newnode = Node(val);

    if (pos < 1) {
      print('position is out range');
      return;
    }
    if (pos == 1) {
      newnode.next = head;
      head = newnode;
      return;
    } else {
      Node? current = head;
      for (int i = 1; i < pos - 1; i++) {
        if (current!.next == null) {
          print('position is out of range');
          return;
        }
        current = current.next;
      }
      newnode.next = current!.next;
      current.next = newnode;
    }
  }

  // remove(int value) {
  //   Node target = Node(value);
  //   if (head!.value == target) {
  //     head = head!.next;
  //     return value;
  //   }
  //   Node? current = head;
  //   Node? removenode;
  //   while (current!.next != null && current.next!.value != target) {
  //     current = current.next;
  //   }
  //   if (current.next != null) {
  //     removenode = current.next;
  //     current.next = removenode!.next;
  //   }
  //   print('value not found');
  //   return null;
  // }
  removeValue(value) {
    if (isEmpty()) {
      print('List is empty, nothing to remove');
      return null;
    } else {
      if (head!.value == value) {
        head = head!.next;
        return value;
      } else {
        Node? current = head;
        Node? removeNode;
        while (current!.next != null && current.next!.value != value) {
          current = current.next;
        }
        if (current.next != null) {
          removeNode = current.next;
          current.next = removeNode!.next;
          return value;
        }
        print("Value not found in the list");
        return null;
      }
    }
  }

  printlist() {
    Node? current = head;
    while (current != null) {
      stdout.write(current.value);
      if (current.next == null) {
        print('');
      }
      current = current.next;
    }
  }

  priintvalue(head) {
    Node? current = head;
    if (current!.next == null) {
      return current;
    }
    stdout.write(current.value);
    return priintvalue(current.next);
  }
}

void main() {
  Slinked linked = Slinked();
  linked.prepend(1);
  
  linked.prepend(2);
  linked.prepend(3);
  linked.prepend(4);
  linked.prepend(5);
  linked.insert(4, 1);
  linked.printlist();
  linked.removeValue(5);
  linked.printlist();
  linked.priintvalue(Node);
}
