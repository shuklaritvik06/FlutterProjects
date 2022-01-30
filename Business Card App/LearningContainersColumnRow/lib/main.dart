import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.white,
                    child: const Text("Hello World"),
                    height: 50.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal:10.0)
                  ),
                  Container(
                    color: Colors.pink,
                    child: const Text("Hello World"),
                    margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal:10.0),
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.red,
                    child: const Text("Hello World"),
                    height: 50.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal:10.0)
                  )
                ],
              ),
          ),
        ));
  }
}
