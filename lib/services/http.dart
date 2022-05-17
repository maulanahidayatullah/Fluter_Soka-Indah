import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseURL =
    "https://proyek3kel6.000webhostapp.com/api/"; //emulator localhost
const Map<String, String> headers = {"Content-Type": "application/json"};

class Http {
  static Future<http.Response> login(String nis, String password) async {
    Map data = {
      "nis": nis,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    // print(response.body);
    return response;
  }
}