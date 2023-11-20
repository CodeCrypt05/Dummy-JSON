import 'dart:convert';

import 'package:dummy_json/model/users/users.dart';
import 'package:http/http.dart' as http;

String baseURL = "https://dummyjson.com/users";

Future<Users> getData() async {
  final response = await http.get(Uri.parse(baseURL));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return Users.fromJson(data);
  } else {
    throw Exception('Failed to load data');
  }
}
