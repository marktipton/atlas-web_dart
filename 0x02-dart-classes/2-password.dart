class Password {
  String? password;

  Password({this.password});

  bool isValid() {
    if (password != null &&
        password!.length > 7 &&
        password!.length < 17 &&
        checkCharacters()) {
      return true;
    }
    return false;
  }

  bool checkCharacters() {
    final RegExp hasUppercase = RegExp(r'[A-Z]');
    final RegExp hasLowercase = RegExp(r'[a-z]');
    final RegExp hasDigit = RegExp(r'[0-9]');

    return hasDigit.hasMatch(password!) &&
        hasLowercase.hasMatch(password!) &&
        hasUppercase.hasMatch(password!);
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
