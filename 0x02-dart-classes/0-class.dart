class User {
  String? name;

  void set stud_name(String name) {
    this.name = name;
  }

  String showName() {
    return ("Hello ${this.name}");
  }
}
