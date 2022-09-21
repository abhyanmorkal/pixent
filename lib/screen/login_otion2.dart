import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_action/slide_action.dart';

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
        child: Stack(fit: StackFit.expand, children: [
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
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
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
                ),
                Container(
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.only(left: 35),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.white,
                    child: SvgPicture.asset(
                      'assets/images/Logo.svg',
                      width: 100,
                      height: 100,
                    )),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  padding: EdgeInsets.symmetric(horizontal: 55),
                  child: Text(
                      'With the PIXENT, \nyou can download thousands of beautiful wallpapers and create your own personal gallery. You can share them via social media or use them as inspiration for your latest project.',
                      style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic))),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SlideAction(
                      trackBuilder: (context, state) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 190, 11),
                            border: Border.all(width: 2),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(3, 3)
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "Sign up",style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'FONTH',
                              color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                      thumbBuilder: (context, state) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 131, 188, 104),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(1, 1)
                              ),
                            ],
                            
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                      action: () {
                        debugPrint("Hello World",);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SlideAction(
                      trackBuilder: (context, state) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 190, 11),
                            border: Border.all(width: 2),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(3, 3)
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "Sign up",style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'FONTH',
                              color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                      thumbBuilder: (context, state) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 131, 188, 104),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(1, 1)
                              ),
                            ],
                            
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                      action: () {
                        debugPrint("Hello World",);
                      },
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
