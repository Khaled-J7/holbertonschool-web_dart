import 'dart:convert';

import 'package:http/http.dart' as http;

printRmCharacters() async {
  var data, parsed_url;
  try {
    parsed_url = Uri.parse("https://rickandmortyapi.com/api/character?page=1");
    data = await http.get(parsed_url);
    data = jsonDecode(data.body)["results"];
    for (var characterInfo in data) {
      print(characterInfo["name"]);
    }
  } catch (e) {
    return ("error caught: $e");
  }
}
