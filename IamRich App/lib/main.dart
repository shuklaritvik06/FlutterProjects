import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('I am Rich')),
            backgroundColor: Colors.blueGrey,
          ),
          backgroundColor: Colors.blueGrey[200],
          body: Center(child: Image.asset('images/Diamond.png')),
      )
    );
  }
}