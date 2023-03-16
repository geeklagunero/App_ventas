import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {

  Future productsBanner() async {
    final response = await http.get(Uri.https('dummyjson.com', 'products'));
    final body = jsonDecode(response.body);
    return body;
  }

  Future categories() async {
    final response = await http.get(Uri.https('dummyjson.com', 'products/categories'));
    final body = jsonDecode(response.body);
    return body;
  }


}