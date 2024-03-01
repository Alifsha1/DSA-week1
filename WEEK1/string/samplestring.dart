void main() {
  String mystring = 'Hello my World!';
  print('orginal String ${findcharindex(mystring, 'o')}');
  String newstring = concatinatedstring(mystring, 'welcome ');
  print('after added ${newstring}');
  String reverse = reversed('alifsha');
  print('after reversed ${reverse}');
  bool isPalindrom = isPalindrome('malayalam');
  print(isPalindrom);
  String lower = tolowercase('ALIFSHA');
  print(lower);
  String upper = touppercase('alifsha');
  print(upper);
}

findcharindex(String str, String char) {
  for (int i = 0; i < str.length; i++) {
    if (str[i] == char) {
      return i;
    }
  }
  return -1;
}

concatinatedstring(String str1, String str2) {
  return str1 + str2;
}

reversed(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed = reversed + str[i];
  }
  return reversed;
}

isPalindrome(String str) {
  String reverse = reversed(str);
  if (str == reverse) {
    return true;
  }
  return false;
}

tolowercase(String str) {
  String lower = '';
  for (int i = 0; i < str.length; i++) {
    lower = lower + str[i].toLowerCase();
  }
  return lower;
}

touppercase(String str) {
  String upper = '';
  for (int i = 0; i < str.length; i++) {
    upper = upper + str[i].toUpperCase();
  }
  return upper;
}
