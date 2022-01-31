import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playMusic(int n){
    AudioCache player = AudioCache(prefix: "assets/");
    player.play('note$n.mp3');
  }
  Expanded addButton(int n){
    var colors = [Colors.teal,Colors.pinkAccent,Colors.amberAccent,Colors.blue,Colors.purple,Colors.teal,Colors.indigo];
    return Expanded(
      child: TextButton(
        onPressed: () {
          playMusic(n);
        },
        child: const Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors[n-1])
        ),
      ),
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.pinkAccent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addButton(1),
              addButton(2),
              addButton(3),
              addButton(4),
              addButton(5),
              addButton(6),
              addButton(7),
            ],
          ),
        ),
      ),
    );
  }
}