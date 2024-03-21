class Stack {
  List<int> stackarr = [];
  push(int val) {
    stackarr.add(val);
  }

  remove() {
    if (stackarr.isEmpty) {
      print('list is empty');
      return;
    }
    int stacksize = stackarr.length;
    int middle = stacksize ~/ 2;
    int delete = stackarr.removeAt(middle);
    return delete;
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  print(stack.stackarr);
  print(stack.remove());
  print(stack.stackarr);
}
