import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrumPage(),
    );
  }
}

class DrumPage extends StatelessWidget {
  final player = AudioCache();

  void sesCal(var ses) {
    player.play(ses);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('MINI PAD'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 1.5,
        children: [
          drumButton('bip', Colors.red),
          drumButton('bongo', Colors.white),
          drumButton('clap1', Colors.blue),
          drumButton('clap2', Colors.yellow),
          drumButton('clap3', Colors.purple),
          drumButton('crash', Colors.green),
        ],
      ),
    );
  }

  TextButton drumButton(var ses, Color color) {
    return TextButton(
      child: Container(
        color: color,
      ),
      onPressed: () {
        sesCal('$ses.wav');
      },
    );
  }
}
