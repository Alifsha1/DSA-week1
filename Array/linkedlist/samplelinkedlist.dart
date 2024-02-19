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

  int getsize() {
    int count = 0;
    Node? current = head;
    while (current != null) {
      count++;
    }
    current = current!.next;
    return count;
  }
}

void main() {
  SLinked linked = new SLinked();
  linked.getsize();
}
