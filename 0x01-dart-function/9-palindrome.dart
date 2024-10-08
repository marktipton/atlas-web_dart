bool isPalindrome(String s) {
  List<String> characters = s.split('');

  String reversedString = characters.reversed.join();

  if (s == reversedString && s.length > 2) {
    return true;
  } else {
    return false;
  }
}
