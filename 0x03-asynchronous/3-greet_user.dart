import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    // Wait for the Future from fetchUserData() to complete.
    // The result is a JSON-formatted string.
    String userData = await fetchUserData();

    // Use jsonDecode to parse the JSON string into a Map.
    Map<String, dynamic> userDataMap = jsonDecode(userData);

    // Access the value associated with the 'username' key from the map.
    String username = userDataMap['username'];

    // Return the message string with the extracted username.
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool credentialsAreValid = await checkCredentials();
    print(
      'There is a user: $credentialsAreValid',
    ); // DRY Don't Repeat Yourself) principle: we don't need to repeat the print statemnt in both if and else blocks

    if (credentialsAreValid) {
      // Wait for greetUser() to complete and return its result.
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
