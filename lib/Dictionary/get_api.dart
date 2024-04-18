import 'dart:convert';
import 'json_transform.dart';
import 'package:http/http.dart' as http;

class GetAPI {
  static const String baseUrl =
      "https://api.dictionaryapi.dev/api/v2/entries/en/";

  static Future<JsonTransform> fetchMeaning(String word) async {
    final response = await http.get(Uri.parse("$baseUrl$word"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return JsonTransform.fromJson(data[0]);
    } else {
      throw Exception("failed to load meaning");
    }
  }
}
