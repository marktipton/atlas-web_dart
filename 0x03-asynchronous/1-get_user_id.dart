import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  try {
    String userString = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(userString);
    return userData['id'];
  } catch (e) {
    print('Error fetching users data: $e');
    return '';
  }
}
