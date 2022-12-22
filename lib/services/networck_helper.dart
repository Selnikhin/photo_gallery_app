import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class NetworkHelper{
  NetworkHelper({required this.url});
  final String url;

  Future<dynamic>getData()
  async {

    http.Response response;
    response = await http.get(Uri.parse(url));
    response.body;
  }
}