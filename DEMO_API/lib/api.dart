import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<dynamic> fetchFacts(http.Client http) async {
  var url =
  Uri.https('api.coindesk.com','/v1/bpi/currentprice.json');


  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
    convert.jsonDecode(response.body) as Map<String, dynamic>;
    return jsonResponse;
  } else {
    debugPrint('Request failed with status: ${response.statusCode}.');
    return 'Failed to fetch';
  }
}