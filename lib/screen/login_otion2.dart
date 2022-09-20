import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login_option_ extends StatefulWidget {
  const Login_option_({super.key});

  @override
  State<Login_option_> createState() => _Login_option_State();
}

class _Login_option_State extends State<Login_option_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 251, 84, 7),
        ),
        child: Stack(children: [
          Image.asset(
            'assets/images/background_overlay.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.fill,
          ),
          SvgPicture.asset(
            'assets/images/emogi.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.scaleDown,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 184,
            decoration: const BoxDecoration(
              color: Color(0x00FFBE0B),
            ),
            child: Center(
              child: Stack(children: <Widget>[
                Text(
                  "PIXENT",
                  style: TextStyle(
                    fontSize: 100,
                    fontFamily: 'FONTH',
                    // color: Color.fromARGB(255, 255, 190, 11),
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.black,
                  ),
                ),
                const Text(
                  "PIXENT",
                  style: TextStyle(
                      fontSize: 100,
                      fontFamily: 'FONTH',
                      color: Color.fromARGB(255, 255, 190, 11),
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black,
                          offset: Offset(4.0, 4.0),
                        )
                      ]),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
