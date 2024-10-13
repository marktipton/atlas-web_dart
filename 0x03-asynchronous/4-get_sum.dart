import '4-util.dart';
import 'dart:convert';

Future<List> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userJson = jsonDecode(userData);
    String userId = userJson['id'];
    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userOrders = jsonDecode(userOrdersData);
    return userOrders;
  } catch (e) {
    return ([]);
  }
}
