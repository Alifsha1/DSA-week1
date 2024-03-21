// class HashTable {
//   List<dynamic>? table;
//   int size;
//   HashTable(this.size) {
//     table = List<dynamic>.filled(size, null, growable: true);
//   }

//   hash(String key) {
//     int total = 0;
//     for (int i = 0; i < key.length; i++) {
//       total += key.codeUnitAt(i);
//     }
//     return total % size;
//   }

//   set(String key, dynamic value) {
//     int index = hash(key);
//     table![index] = value;
//   }

//   get(String key) {
//     int index = hash(key);
//     return table![index] ?? 'no value found';
//   }

//   remove(String key) {
//     int index = hash(key);
//     table![index] = null;
//   }

//   display() {
//     for (int i = 0; i < table!.length; i++) {
//       if (table![i] != null) {
//         print('$i, ${table![i]}\t');
//       }
//     }
//   }
// }

// void main() {
//   HashTable table = HashTable(10);
//   table.set('name', 'ali');
//   table.set('age', 25);
//   table.display();
// }

class HashTable {
  List<dynamic>? table;
  int size;
  HashTable(this.size) {
    table = List<dynamic>.filled(size, null, growable: true);
  }
  hash(String key) {
    int total = 0;
    for (int i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % size;
  }

  set(String key, dynamic value) {
    int index = hash(key);
    table![index] = value;
  }

  get(String key) {
    int index = hash(key);
    return table![index] ?? 'no values found';
  }

  Remote(String key) {
    int index = hash(key);
    table![index] = null;
  }

  display() {
    for (int i = 0; i < table!.length; i++) {
      if (table![i] != null) {
        print('$i,${table![i]}');
      }
    }
  }
}

void main() {
  HashTable table = HashTable(10);
  table.set('name', 'ali');
  table.set('age', 25);
  print(table.get('name'));
}
