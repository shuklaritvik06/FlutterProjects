import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNum = 1;
  void changeBall(int n){
      setState(() {
        ballNum = Random().nextInt(n) + 1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: const Center(
              child:Text("Decide Now")
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Image.asset('images/ball$ballNum.png')),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(onPressed: () {
                changeBall(5);
            },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20.0)),
                foregroundColor: MaterialStateProperty.all(Colors.white)
              ),
            child: const Text("Click Me"),
            )
          ],
        ),
      ),
    );
  }
}

