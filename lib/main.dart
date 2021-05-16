import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void PlaySound(int SoundNumber)
  {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }
  Expanded BuildKey({Color color,int soundNumber,String text})
  {
   return Expanded(
      child: FlatButton(onPressed: () {
        PlaySound(soundNumber);
      },color: color,
        child: Text(text),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(color: Colors.red, soundNumber: 1, text: 'Tune 1'),
              BuildKey(color: Colors.blue, soundNumber: 2, text: 'Tune 2'),
              BuildKey(color: Colors.yellow, soundNumber: 3, text: 'Tune 3'),
              BuildKey(color: Colors.indigo, soundNumber: 4,text: 'Tune 4'),
              BuildKey(color: Colors.orange, soundNumber: 5,text: 'Tune 5'),
              BuildKey(color: Colors.teal, soundNumber: 6,text: 'Tune 6'),
              BuildKey(color: Colors.green, soundNumber: 7,text: 'Tune 7'),
            ],
          ),
          ),
        ),
      );
  }
}
