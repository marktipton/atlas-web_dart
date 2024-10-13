import '1-util.dart';

Future<String> getUserId() async {
  try {
    String userString = await fetchUserData();
    return userString;
  } catch (e) {
    print('Error fetching users data: $e');
    return '';
  }
}
