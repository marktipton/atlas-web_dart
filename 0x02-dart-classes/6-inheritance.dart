import '6-password.dart';

class User {
  String? name;
  int? age;
  double? height;
  int? id;
  String? user_password;

  User({this.name, this.age, this.height, this.id, this.user_password});

  String showName() {
    return ("Hello ${this.name ?? 'User'}");
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'] ?? '',
    );
  }

  bool isPasswordValid() {
    if (user_password == null) return false;
    Password passwordInstance = Password(password: user_password);
    return passwordInstance.isValid();
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isPasswordValid()})';
  }
}
