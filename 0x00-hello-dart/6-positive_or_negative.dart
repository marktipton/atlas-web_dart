void main(List<String> arg) {
  int n = int.parse(arg[0]);
  if (n < 0) {
    print('$n is negative');
  } else if (n == 0) {
    print('$n is zero');
  } else {
    print('$n is positive');
  }
}
