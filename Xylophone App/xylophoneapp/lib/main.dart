import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: TextButton(
          onPressed: () {
            final assetsAudioPlayer = AssetsAudioPlayer();
            assetsAudioPlayer.open(
              Audio("assets/audios/note1.wav"),
            );
          },
          child: const Text("Click Me"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.teal)
          ),
        ),
      ),
    );
  }
}
