void outer(String name, String id) {
  List<String> splitName = name.split(' ');
  String abbrevName = '${splitName[1][0]}.${splitName[0]}';
  String inner() {
    return ('Hello Agent $abbrevName your id is $id');
  }

  print(inner());
}
