

class Queue {
  List<int> stack1 = [];
  List<int> stack2 = [];

  void enqueue(int item) {
    stack1.add(item);
  }

   dequeue() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.isEmpty ? null : stack2.removeLast();
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.enqueue(40);
  queue.enqueue(50);

  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());
}
