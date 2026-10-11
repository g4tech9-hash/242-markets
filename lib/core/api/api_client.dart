import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = 'http://localhost:3000/api'; // Pointing to the existing Next.js API

  Future<List<Map<String, dynamic>>> getAssets() async {
    final response = await http.get(Uri.parse('$baseUrl/assets'));
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(json.decode(response.body));
    }
    throw Exception('Failed to load assets');
  }

  Future<List<Map<String, dynamic>>> getCandles(String ticker) async {
    final response = await http.get(Uri.parse('$baseUrl/candles?ticker=$ticker'));
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(json.decode(response.body));
    }
    throw Exception('Failed to load candles');
  }
}
