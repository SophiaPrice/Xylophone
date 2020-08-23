import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              XylophoneButton(Colors.red, 1),
              XylophoneButton(Colors.orange, 2),
              XylophoneButton(Colors.yellow, 3),
              XylophoneButton(Colors.lightGreen, 4),
              XylophoneButton(Colors.green, 5),
              XylophoneButton(Colors.blue, 6),
              XylophoneButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  final MaterialColor color;
  final int number;

  const XylophoneButton(this.color, this.number);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        child: Text(
          "",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
