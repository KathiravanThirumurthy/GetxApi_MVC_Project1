import 'dart:convert';

import 'package:api_project2/model/Usermodel.dart';
import 'package:http/http.dart' as http;

class Usersapiservice {
  String url = "https://jsonplaceholder.typicode.com/users";
  Future<List<Usermodel>?> getUser() async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return usermodelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
