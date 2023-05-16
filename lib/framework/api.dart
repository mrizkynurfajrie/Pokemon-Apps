import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class Api {
  String baseUrl = 'https://pokeapi.co/api/v2/';

  Future<dynamic> apiJsonGet(
    String url,
  ) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers : $headers');
    log('api url : $baseUrl$url');

    http.Response r = await http.get(
      Uri.parse(baseUrl + url),
      headers: headers,
    );
    log('status code : ${r.statusCode}');
    var data = json.decode(r.body);

    return data;
  }

  Future<dynamic> apiJsonGetDetail(
    String url,
  ) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers : $headers');
    log('api url : $url');

    http.Response r = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    log('status code : ${r.statusCode}');
    var data = json.decode(r.body);

    return data;
  }
}
