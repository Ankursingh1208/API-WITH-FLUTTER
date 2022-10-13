import 'package:flutter_test/flutter_test.dart';
import 'package:demo_api/api.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import '../lib/apidata.dart' as apidata;

void main() {
  group('test api', () {
    test('returns address when http response is successful',
            () async {

          // Mock the API call to return a json response with http status 200 Ok //
          final mockHTTPClient = MockClient((request) async {

            // Create sample response of the HTTP call //
            final response =apidata.data_demo;
            return Response(jsonEncode(response), 200);
          });

          expect(await fetchFacts(mockHTTPClient), apidata.data_demo);
        });

    test('return error message when http response is unsuccessful', () async {

      // Mock the API call to return an
      // empty json response with http status 404
      final mockHTTPClient = MockClient((request) async {
        final response = {};
        return Response(jsonEncode(response), 404);
      });
      expect(await fetchFacts(mockHTTPClient),
          'Failed to fetch');
    });
  });
}
