import 'package:audio_manager/audio_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:flutter_music_player/song.dart';
import 'package:flutter_music_player/songWidget.dart';
import 'package:flutter_music_player/widget.dart';
import 'dart:async';
void main() {
  runApp(MyHome());
}


class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => MyApp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Image.asset("assets/just.png",height: 800,
          width: 800,
          fit: BoxFit.fitHeight,)

    );
  }
}


const appbar = Color(0xFF9d0505);
const bg = Color(0xFF181c25);