import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keyboard App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KeyBoardPage(),
    );
  }
}

class KeyBoardPage extends StatefulWidget {
  @override
  _KeyBoardPageState createState() => _KeyBoardPageState();
}

class _KeyBoardPageState extends State<KeyBoardPage> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => player.play('note1.wav'),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => player.play('note2.wav'),
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => player.play('note3.wav'),
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => player.play('note4.wav'),
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => player.play('note5.wav'),
              child: Container(
                color: Colors.orange,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => player.play('note6.wav'),
              child: Container(
                color: Colors.white30,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => player.play('note7.wav'),
              child: Container(
                color: Colors.purple,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
