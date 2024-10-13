import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    return (userData);
  } catch (e) {
    return ('error caught: $e');
  }
}

Future<String> loginUser() async {
  try {
    if (await checkCredentials()) {
      print('There is a user: true');
      Map<String, dynamic> userJson = jsonDecode(await (greetUser()));

      return ('Hello ${userJson['username']}');
    } else {
      print('There is a user: false');
      return ('Wrong credentials');
    }
  } catch (e) {
    return ('error caught: $e');
  }
}
