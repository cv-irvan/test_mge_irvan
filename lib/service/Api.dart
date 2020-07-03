import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://jsonplaceholder.typicode.com/albums/1/photos";

class API {
  static Future getUsers() {
    var url = baseUrl;
    return http.get(url);
  }
}