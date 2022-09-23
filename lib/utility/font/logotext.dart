import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LogoText extends StatelessWidget {
  final String text;
  double fontSize;
  final Color color;
   LogoText({super.key, 
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
          fontFamily: 'FONTH',
          // color: Color.fromARGB(255, 255, 190, 11),
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2
            ..color = Colors.black,
        ),
      ),
      Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'FONTH',
            color: color,
            shadows: const <Shadow>[
              Shadow(
                color: Colors.black,
                offset: Offset(4.0, 4.0),
              )
            ]),
      )
    ]);
  }
}
