import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // void function for the soundWaveNUMBERS.
  void soundBtn(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  //(D.R.Y) capsulate multiple soundTile to single function
  Expanded buildTile({Color colors, int btnSound}) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          soundBtn(btnSound);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.red,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.purple,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // call the function here to display the soundTiles.
              buildTile(colors: Colors.red, btnSound: 1),
              buildTile(colors: Colors.orange, btnSound: 2),
              buildTile(colors: Colors.yellow, btnSound: 3),
              buildTile(colors: Colors.green, btnSound: 4),
              buildTile(colors: Colors.blue, btnSound: 5),
              buildTile(colors: Colors.indigo, btnSound: 6),
              buildTile(colors: Colors.purple, btnSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
