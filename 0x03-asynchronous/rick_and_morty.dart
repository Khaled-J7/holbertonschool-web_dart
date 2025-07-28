import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // 1. Start with the initial API endpoint for characters.
    String? nextUrl = 'https://rickandmortyapi.com/api/character';

    // 2. Loop as long as there is a next page to fetch.
    while (nextUrl != null) {
      // 3. Make the HTTP GET request.
      final response = await http.get(Uri.parse(nextUrl));

      // 4. Check if the request was successful.
      if (response.statusCode == 200) {
        // 5. Decode the JSON response body into a Map.
        Map<String, dynamic> data = jsonDecode(response.body);

        // 6. The character data is in a list under the 'results' key.
        List<dynamic> characters = data['results'];

        // 7. Loop through the list of characters and print their names.
        for (var character in characters) {
          print(character['name']);
        }

        // 8. Update nextUrl with the URL for the next page.
        // If there are no more pages, data['info']['next'] will be null,
        // and the while loop will terminate.
        nextUrl = data['info']['next'];
      } else {
        // If the status code is not 200, throw an error to be caught.
        throw 'Failed to load characters';
      }
    }
  } catch (error) {
    // 9. If any error occurs in the try block, catch it and print the message.
    print('error caught: $error');
  }
}