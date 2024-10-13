class Password {
  String? _password;

  Password({String? password}) : _password = password;

  bool isValid() {
    if (_password != null &&
        _password!.length > 7 &&
        _password!.length < 17 &&
        checkCharacters()) {
      return true;
    }
    return false;
  }

  bool checkCharacters() {
    final RegExp hasUppercase = RegExp(r'[A-Z]');
    final RegExp hasLowercase = RegExp(r'[a-z]');
    final RegExp hasDigit = RegExp(r'[0-9]');

    return hasDigit.hasMatch(_password!) &&
        hasLowercase.hasMatch(_password!) &&
        hasUppercase.hasMatch(_password!);
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
