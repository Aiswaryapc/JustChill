
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:just_chill/top_navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color:bg ,
      child: Container(
        color:bg ,
        child: Column(

          children: [
            Container(
              height: 100,
              color:  bg,
              child: Row(
                children: [
                  Padding( padding: const EdgeInsets.only(left: 6,top: 40 ),
                    child: Align(alignment: Alignment.centerLeft,
                      child: Text("My Music",style: TextStyle(
                          fontSize: 35,
                          fontWeight:  FontWeight.w900,
                          fontFamily: 'Mellgatha' ,
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: <Color>[
                                appbar,
                                Colors.white,
                                Colors.yellow
                              ],
                            ).createShader(const Rect.fromLTWH(100, 100, 200, 100))

                      ) ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(padding: const EdgeInsets.only(top: 40 ),
                      child: Icon(Icons.search,color: appbar,size: 30,)),
                  Padding(padding: const EdgeInsets.only(right: 6,top: 40 ),
                      child: Icon(Icons.settings,color: appbar,size: 30,))
                ],
              ),
            ),
            TopNavigation(),

          ],
        ),
      ),
    );
  }
}

// ignore: use_full_hex_values_for_flutter_colors
const appbar = Color(0xFF9d0505);
const bg = Color(0xFF181c25);

