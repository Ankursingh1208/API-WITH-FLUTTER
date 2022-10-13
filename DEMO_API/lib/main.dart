import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:demo_api/api.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body:  Center(
          child: ElevatedButton(
              onPressed: () async{
           // var response = await fetchFacts();
           // print(response);
          },
          child: Text('Hello World')),
        ),
      ),
    );
  }
}