class User {
  String? name;
  int? age;
  double? height;
  int? id;

  User({this.name, this.age, this.height, this.id});

  String showName() {
    return ("Hello ${this.name}");
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
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
}
