class User {
  String? name;
  int? age;
  double? height;

  User({this.name, this.age, this.height});
  // void set stud_name(String name) {
  //   this.name = name;
  // }

  // void set stud_age(int age) {
  //   this.age = age;
  // }

  // void set stud_height(double height) {
  //   this.height = height;
  // }

  String showName() {
    return ("Hello ${this.name}");
  }

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'age': this.age,
      'height': this.height,
    };
  }
}
