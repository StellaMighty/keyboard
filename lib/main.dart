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
        primarySwatch: Colors.blue,
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

  //function that builds a key
  Widget buildKey(int noteNumber, Color color) {
    return Expanded(
      child: InkWell(
        onTap: () => player.play('note$noteNumber.wav'),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            buildKey(1, Colors.red),
            buildKey(2, Colors.pink),
            buildKey(3, Colors.purple),
            buildKey(4, Colors.blue),
            buildKey(5, Colors.green),
            buildKey(6, Colors.teal),
            buildKey(7, Colors.indigo),
          ],
        ),
      ),
    );
  }
}
