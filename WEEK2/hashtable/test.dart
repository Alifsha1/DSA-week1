// class HashTable {
//   late List<dynamic> table;
//   int size;
//   HashTable(this.size) {
//     table = List<dynamic>.filled(size, []);
//   }

//   hash(String key) {
//     int totalo = 0;
//     for (int i = 0; i < key.length; i++) {
//       totalo += key.codeUnitAt(i);
//     }
//     return totalo % size;
//   }

//   void set(String key, dynamic value) {
//     final index = hash(key);
//     final bucket = table[index];
//     if (bucket.isEmpty) {
//       table[index] = [
//         [key, value]
//       ];
//     } else {
//       final samekeyitem = bucket.firstWhere(
//         (item) => item[0] == key,
//         orElse: () => [],
//       );
//       if (samekeyitem.isNotEmpty) {
//         samekeyitem[1] = value;
//       } else {
//         bucket.add([key, value]);
//       }
//     }
//   }

//   dynamic get(String key) {
//     final index = hash(key);
//     final bucket = table[index];
//     if (bucket.isNotEmpty) {
//       final samekeyitem = bucket.firstWhere(
//         (item) => item[0] == key,
//         orElse: () => [],
//       );
//       if (samekeyitem.isNotEmpty) {
//         return samekeyitem[1];
//       }
//     }
//     return null;
//   }

//   void remove(String key) {
//     final index = hash(key);
//     final bucket = table[index];
//     if (bucket.isNotEmpty) {
//       final samekey = bucket.firstWhere(
//         (item) => item[0] == key,
//         orElse: () => [],
//       );
//       if (samekey.isNOtEmpty) {
//         bucket.remove(samekey);
//       }
//     }
//   }

//   display() {
//     for (int i = 0; i < table.length; i++) {
//       if (table[i].isNotEmpty) {
//         print('$i:${table[i]}');
//       }
//     }
//   }
// }

class HashTable {
  late List<dynamic> table;
  int size;
  HashTable(this.size) {
    table = List<dynamic>.filled(size, []);
  }
  hash(String key) {
    int total = 0;
    for (int i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % size;
  }

  set(String key, dynamic value) {
    final index = hash(key);
    final bucket = table[index];
    if (bucket.isEmpty) {
      table[index] = [
        [key, value]
      ];
    } else {
      final samekey =
          bucket.firstWhere((item) => item[0] == key, orElse: () => []);
      if (samekey.isNotEmpty) {
        samekey[1] = value;
      } else {
        bucket.add(value);
      }
    }
  }

  dynamic get(String key) {
    final index = hash(key);
    final bucket = table[index];
    if (bucket.isNotEmpty) {
      final samekey =
          bucket.firstWhere((item) => item[0] == key, orElse: () => []);
      if (samekey.isNotEmpty) {
        return samekey[1];
      }
    }
    return null;
  }

  void remove(String key) {
    final index = hash(key);
    final bucket = table[index];
    if (bucket.isNotEmpty) {
      final samekey =
          bucket.firstWhere((item) => item[0] == key, orElse: () => []);
      if (samekey.isNotEmpty) {
        bucket.remove(samekey);
      }
    }
  }
}
