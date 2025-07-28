import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Step 1: Get the user's data and extract their ID.
    String userDataString = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(userDataString);
    String userId = userData['id'];

    // Step 2: Use the ID to get the user's list of orders.
    String userOrderString = await fetchUserOrders(userId);
    List<dynamic> userOrders = jsonDecode(userOrderString);

    // Step 3: Loop through the orders to fetch each price and sum them up.
    var totalPrice = 0.0;
    for (var product in userOrders) {
      // For each product, wait for its price
      String productPriceString = await fetchProductPrice(product);
      // The price is also a JSON string, so it needs to be decoded
      double productPrice = double.parse(productPriceString);
      totalPrice += productPrice;
    }

    // Step 4: Return the final calculated total
    return totalPrice;
  } catch (error) {
    // Step 5: If any 'await' call fails, the catch block is executed.
    return -1;
  }
}
