import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // find user id
    String userData = await fetchUserData();
    Map<String, dynamic> userJson = jsonDecode(userData);
    String userId = userJson['id'];
    // find orders for that user
    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userOrders = jsonDecode(userOrdersData);
    double totalPrice = 0;
    // calculate prices of each order
    for (var order in userOrders) {
      String priceData = await fetchProductPrice(order);
      double price = double.parse(priceData);
      totalPrice += price;
    }
    return totalPrice;
  } catch (e) {
    return (-1);
  }
}
