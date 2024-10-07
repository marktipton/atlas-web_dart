int add(int a, int b) {
  return (a + b);
}

int sub(int a, int b) {
  return (a - b);
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int difference = sub(a, b);
  String addString = 'Add $a + $b = $sum';
  String subString = 'Sub $a - $b = $difference';
  return ('$addString\n$subString');
}
