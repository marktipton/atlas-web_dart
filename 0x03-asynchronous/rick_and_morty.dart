import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  const String apiUrl = 'https://rickandmortyapi.com/api/character';

  try {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      List<dynamic> characters = jsonResponse['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print(
          'Error: Failed to fetch characters. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
