import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              color: Colors.blue,
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
              child: Text(
                "Note 1",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
