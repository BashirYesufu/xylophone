import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    AudioCache player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({required int soundNumber, required Color fillColor}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(fillColor),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(soundNumber: 1, fillColor: Colors.red),
              buildKey(soundNumber: 2, fillColor: Colors.orange),
              buildKey(soundNumber: 3, fillColor: Colors.yellow),
              buildKey(soundNumber: 4, fillColor: Colors.green),
              buildKey(soundNumber: 5, fillColor: Colors.teal),
              buildKey(soundNumber: 6, fillColor: Colors.blue),
              buildKey(soundNumber: 7, fillColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
