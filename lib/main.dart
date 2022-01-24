import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildkey({Color color, int num, String note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(num);
        },
        child: Text(
          "$note",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, num: 1, note: 'C'),
              buildkey(color: Colors.orange, num: 2, note: 'D'),
              buildkey(color: Colors.yellow, num: 3, note: 'E'),
              buildkey(color: Colors.green, num: 4, note: 'F'),
              buildkey(color: Colors.teal, num: 5, note: 'G'),
              buildkey(color: Colors.blue, num: 6, note: 'A'),
              buildkey(color: Colors.purple, num: 7, note: 'B'),
            ],
          ),
        ),
      ),
    );
  }
}
