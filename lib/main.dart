import 'dart:async';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
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
                (context) => HomeScreen()
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




/*late VideoPlayerController _controller;
@override
void initState() {
  super.initState();
  _controller = VideoPlayerController.asset("assets/justvdo.mp4")
    ..initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      setState(() {});
    });
}

@override
Widget build(BuildContext context) {
  return Column(
    children: [

    ],
  );

}
}*/
