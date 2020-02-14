import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playsound(filename) {
    final player = AudioCache();
    player.play(filename);
  }

  Widget _buttonPlaySong(String filename, Color color) {
    return FlatButton(
      onPressed: () => _playsound(filename),
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              _buttonPlaySong('note1.wav', Colors.red),
              _buttonPlaySong('note2.wav', Colors.orange),
              _buttonPlaySong('note3.wav', Colors.yellow),
              _buttonPlaySong('note4.wav', Colors.green),
              _buttonPlaySong('note5.wav', Colors.teal),
              _buttonPlaySong('note6.wav', Colors.blue),
              _buttonPlaySong('note7.wav', Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
