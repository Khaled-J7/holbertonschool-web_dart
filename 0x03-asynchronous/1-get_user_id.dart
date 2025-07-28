import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  // 1. Wait for the Future from fetchUserData() to complete.
  // The result is a JSON-formatted string.
  String userDataString = await fetchUserData();

  // 2. Use jsonDecode to parse the JSON string into a Map.
  // The map will have String keys and dynamic values.
  Map<String, dynamic> userDataMap = jsonDecode(userDataString);

  // 3. Access the value associated with the 'id' key from the map.
  String userId = userDataMap['id'];

  // 4. Return the extracted user ID.
  return userId;
}
