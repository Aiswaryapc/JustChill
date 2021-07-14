
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.black26 ,
      child: Container(
        color:Colors.black26 ,
        child: Column(

          children: [
            Container(
              height: 100,
              color:  appbar,
              child: Row(
                children: [
                  Padding( padding: const EdgeInsets.only(left: 6,top: 40 ),
                    child: Align(alignment: Alignment.centerLeft,
                      child: Text("My Music",style: TextStyle(
                          fontSize: 35,
                          fontWeight:  FontWeight.w900,
                          fontFamily: 'Montserrat' ,
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: <Color>[
                                Colors.white,
                                Colors.yellow,
                                Colors.yellow
                              ],
                            ).createShader(const Rect.fromLTWH(100, 100, 200, 100))

                      ) ),
                    ),
                  )
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}

// ignore: use_full_hex_values_for_flutter_colors
const appbar = Color(0xFFb00000);