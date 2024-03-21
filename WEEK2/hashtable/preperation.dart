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

  void set(String key, dynamic value) {
    int index = hash(key);
    final bucket = table[index];
    if (bucket.isEmpty) {
      table[index] = [
        [key, value]
      ];
    } else {
      final samekeyItem = bucket.firstWhere(
        (item) => (item[0]) == key,
        orElse: () => [],
      );
      if (samekeyItem.isNotEmpty) {
        samekeyItem[1] == value;
      } else {
        bucket.add([key, value]);
      }
    }
  }
}
