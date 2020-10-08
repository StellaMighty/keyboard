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
            buildKey(1, Colors.red),
            buildKey(2, Colors.pink),
            buildKey(3, Colors.purple),
            buildKey(4, Colors.blue),
            buildKey(5, Colors.green),
            buildKey(6, Colors.teal),
            buildKey(7, Colors.indigo),
            buildKey(7, Colors.indigo),
          ],
        ),
      ),
    );
  }
}
