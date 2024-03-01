reversestring(String str) {
  if (str.isEmpty) {
    return str;
  }
  return reversestring(str.substring(1)) + str[0];
}

void main() {
  String original = "alifsha";
  String reversed = reversestring(original);
  print(original);
  print(reversed);
}
