import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String url = 'https://rickandmortyapi.com/api/character';

    while (url.isNotEmpty) {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      final data = json.decode(response.body);
      final characters = data['results'] as List;

      for (var character in characters) {
        print(character['name']);
      }

      url = data['info']['next'] ?? '';
    }
  } catch (e) {
    print('error caught: $e');
  }
}
