class Password {
  String? password;

  Password({this.password});

  bool isValid() {
    if (password != null && password!.length > 7 && password!.length < 17) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
