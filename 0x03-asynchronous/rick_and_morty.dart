import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // Start with the first page
    String url = 'https://rickandmortyapi.com/api/character';

    while (url.isNotEmpty) {
      // Make the HTTP request
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Parse the JSON response
        final data = json.decode(response.body);
        final characters = data['results'] as List;

        // Print each character's name
        for (var character in characters) {
          print(character['name']);
        }

        // Check if there's a next page
        final info = data['info'];
        url = info['next'] ?? '';
      } else {
        throw Exception('Failed to load characters: ${response.statusCode}');
      }
    }
  } catch (e) {
    print('error caught: $e');
    return;
  }
}
