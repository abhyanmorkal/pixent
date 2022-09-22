import 'package:flutter/material.dart';
import '../colors/color.dart';

class WelcomeText extends StatelessWidget {
  final String text;
  double fontSize;
  final Color color;

   WelcomeText({super.key, 
   required this.text, 
   required this.color,
   required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: 'Modak',
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 5
            ..color = Colors.black,
        ),
      ),
      Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'Modak',
            color: color,
            shadows: const <Shadow>[
              Shadow(
                color: Colors.black,
                offset: Offset(6.0, 6.0),
              )
            ]),
      )
    ]);
  }
}
