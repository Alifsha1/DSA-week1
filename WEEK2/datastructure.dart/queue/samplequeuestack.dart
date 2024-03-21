class Queue {
  List<int> stack1;
  Queue({List<int>? stack1}) : stack1 = stack1 ?? [];
  enqueue(int value) {
    stack1.add(value);
  }

  dequeue() {
    return stack1.removeAt(0);
  }

  display() {
    print(stack1.toString());
  }

  size() {
    return stack1.length;
  }
}

void main() {
  Queue queue = new Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.display();
  //print(queue.dequeue());
  queue.dequeue();
  queue.display();
}
