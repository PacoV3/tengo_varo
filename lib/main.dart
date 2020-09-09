import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Guitarras Ibanez'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Image.asset('images/ibanez.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          playRemoteFile();
        },
        child: Icon(Icons.music_note),
        backgroundColor: Colors.amber,
      ),
    ));
  }
}

void playRemoteFile() {
  AudioPlayer player = new AudioPlayer();
  player.play("https://freesound.org/data/previews/370/370934_6399962-lq.mp3");
}
