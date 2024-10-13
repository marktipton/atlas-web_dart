import '0-util.dart';

Future<void> usersCount() async {
  try {
    int userCount = await fetchUsersCount();
    print(userCount);
  } catch (e) {
    print('Error fetching users count: $e');
  }
}
