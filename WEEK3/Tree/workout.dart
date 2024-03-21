// import 'dart:io';

// class Node<T> {
//   T? value;
//   Node? left;
//   Node? right;
//   Node({this.value});
// }

// class BineryTree {
//   Node? root;
//   isEmpty() {
//     return root == null;
//   }

//   insert(value) {
//     Node newnode = Node(value: value);
//     if (isEmpty()) {
//       root = newnode;
//     } else {
//       insertionnode(root, newnode);
//     }
//   }

//   insertionnode(Node? root, Node? newnode) {
//     if (newnode!.value < root!.value) {
//       if (root.left == null) {
//         root.left = newnode;
//       } else {
//         insertionnode(root.left, newnode);
//       }
//     } else {
//       if (root.right == null) {
//         root.right = newnode;
//       } else {
//         insertionnode(root.right, newnode);
//       }
//     }
//   }

//   search(Node? root, dynamic value) {
//     if (root == null) {
//       return 'value not found';
//     } else {
//       if (root.value == value) {
//         return 'value found';
//       } else if (value < root.value) {
//         return search(root.left, value);
//       } else {
//         return search(root.right, value);
//       }
//     }
//   }

//   preorder(Node? root) {
//     if (root != null) {
//       stdout.write('${root.value}\t');
//       preorder(root.left);
//       preorder(root.right);
//     }
//   }

//   inorder(Node? root) {
//     if (root != null) {
//       inorder(root.left);
//       stdout.write('${root.value}\t');
//       inorder(root.right);
//     }
//   }

//   postorder(Node? root) {
//     if (root != null) {
//       postorder(root.left);
//       postorder(root.right);
//       stdout.write('${root.value}\t');
//     }
//   }

//   // levlorder() {
//   //   List<Node> queue = [];
//   //   queue.add(root!);
//   //   while (queue.isNotEmpty) {
//   //     Node? current = queue.removeAt(0);
//   //     stdout.write('${current.value}\t');
//   //     if (current.left != null) {
//   //       queue.add(current.left!);
//   //     }
//   //     if (current.right != null) {
//   //       queue.add(current.right!);
//   //     }
//   //   }
//   // }
//   levelorder() {
//     List<Node> queue = [];
//     queue.add(root!);
//     while (queue.isNotEmpty) {
//       Node? current = queue.removeAt(0);
//       stdout.write('${current.value}\t');
//       if (current.left != null) {
//         queue.add(current.left!);
//       }
//       if (current.right != null) {
//         queue.add(current.right!);
//       }
//     }
//   }

//   min(Node? root) {
//     if (root!.left == null) {
//       return root.value;
//     } else {
//       return min(root.left);
//     }
//   }

//   max(Node? root) {
//     if (root!.right == null) {
//       return root.value;
//     } else {
//       return max(root.right);
//     }
//   }

//   // delete(dynamic value) {
//   //   root = deletenode(root, value);
//   // }

//   // deletenode(Node? root, dynamic value) {
//   //   if (root == null) {
//   //     return root;
//   //   }
//   //   if (value < root.value) {
//   //     root.left = deletenode(root.left, value);
//   //   } else if (value > root.value) {
//   //     root.right = deletenode(root.right, value);
//   //   } else {
//   //     if (root.left == null && root.right == null) {
//   //       return null;
//   //     }
//   //     if (root.left == null) {
//   //       return root.right;
//   //     } else if (root.right == null) {
//   //       return root.left;
//   //     }
//   //     root.value = min(root.right);
//   //     root.right = deletenode(root.right, root.value);
//   //   }
//   //   return root;
//   // }
//   delete(dynamic value) {
//     root = deletenode(root, value);
//   }

//   deletenode(Node? root, dynamic value) {
//     if (root == null) {
//       return root;
//     }
//     if (value < root.value) {
//       root.left = deletenode(root.left, value);
//     } else if (value > root.value) {
//       root.right = deletenode(root.right, value);
//     } else {
//       if (root.left == null && root.right == null) {
//         return null;
//       }
//       if (root.left == null) {
//         return root.left;
//       } else if (root.right == null) {
//         return root.left;
//       }
//       root.value = min(root.right);
//       root.right = deletenode(root.right, value);
//     }
//     return root;
//   }
// }

// void main() {
//   BineryTree bt = BineryTree();
//   bt.insert(10);
//   bt.insert(5);
//   bt.insert(15);
//   bt.insert(3);
//   bt.insert(7);
//   print(bt.search(bt.root, 7));
//   print('preoder');
//   bt.preorder(bt.root);
//   print('');
//   print('inorder');
//   bt.inorder(bt.root);
//   print('');
//   print('postorder');
//   bt.postorder(bt.root);
//   print('');
//   print('level order');
//   bt.levelorder();
//   print('');
//   print(bt.min(bt.root));
//   print(bt.max(bt.root));
//   bt.delete(3);
//   print('level order');
//   bt.levelorder();
//   print('');
// }

import 'dart:io';

class Node<T> {
  T? value;
  Node? left;
  Node? right;
  Node({this.value});
}

class Binarysearchtree {
  Node? root;
  isEmpty() {
    return root == null;
  }

  isertion(dynamic value) {
    Node? newnode = Node(value: value);
    if (isEmpty()) {
      root = newnode;
    } else {
      insertionnode(root, newnode);
    }
  }

  insertionnode(Node? root, Node? newnode) {
    if (newnode!.value < root!.value) {
      if (root.left == null) {
        root.left = newnode;
      } else {
        insertionnode(root.left, newnode);
      }
    } else {
      if (root.right == null) {
        root.right = newnode;
      } else {
        insertionnode(root.right, newnode);
      }
    }
  }

  searcch(Node? root, dynamic value) {
    if (root == null) {
      return 'value not found';
    } else {
      if (root.value == value) {
        return 'value is found';
      } else if (value < root.value) {
        return searcch(root.left, value);
      } else {
        return searcch(root.right, value);
      }
    }
  }

  preorder(Node? root) {
    if (root != null) {
      stdout.write('${root.value}\t');
      preorder(root.left);
      preorder(root.right);
    }
  }

  inorder(Node? root) {
    if (root != null) {
      preorder(root.left);
      stdout.write('${root.value}\t');
      preorder(root.right);
    }
  }

  postorder(Node? root) {
    if (root != null) {
      postorder(root.left);
      postorder(root.right);
      stdout.write('${root.value}\t');
    }
  }

  levelorder() {
    List<Node> queue = [];
    queue.add(root!);
    while (queue.isNotEmpty) {
      Node? current = queue.removeAt(0);
      stdout.write('${current.value}\t');
      if (current.left != null) {
        queue.add(current.left!);
      }
      if (current.right != null) {
        queue.add(current.right!);
      }
    }
  }

  min(Node? root) {
    if (root!.left == null) {
      return root.value;
    }
    return min(root.left);
  }

  max(Node? root) {
    if (root!.right == null) {
      return root.value;
    }
    return max(root.right);
  }

  delete(dynamic value) {
    root = deletenode(root, value);
  }

  deletenode(Node? root, dynamic value) {
    if (root == null) {
      return null;
    }
    if (value < root.value) {
      root.left = deletenode(root.left, value);
    } else if (value > root.value) {
      root.right = deletenode(root.right, value);
    } else {
      if (root.left == null && root.right == null) {
        return null;
      }
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }
      root.value = min(root.right);
      root.right = deletenode(root.right, value);
    }
    return root;
  }

  bool isValidBTS(Node? root, dynamic min, dynamic max) {
    if (root == null) {
      return true;
    }
    if (root.value <= min || root.value >= max) {
      return false;
    }
    return isValidBTS(root.left, min, root.value) &&
        isValidBTS(root.right, root.value, max) ;
  }
}

void main() {
  Binarysearchtree bt = Binarysearchtree();
  bt.isertion(4);
  bt.isertion(5);
  bt.isertion(6);
  bt.isertion(7);
  bt.isertion(8);
  bt.isertion(9);
  print(bt.searcch(bt.root, 8));
  bt.preorder(bt.root);
  print('');
  bt.inorder(bt.root);
  print('');
  bt.postorder(bt.root);
  print('');
  print('levelorder');
  bt.levelorder();
  print('');
  print(bt.min(bt.root));
  print(bt.max(bt.root));
  bt.delete(8);
  print('levelorder');
  bt.levelorder();
  print('');
  print(bt.isValidBTS(bt.root, double.negativeInfinity, double.infinity));
}
