// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixent/screen/login/sign_in.dart';
import 'package:pixent/utility/widgets/app_button.dart';
import 'package:pixent/utility/color.dart';

import 'login/sign_up.dart';

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
                    padding: EdgeInsets.only(left: 35, top: 5),
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
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: 250,
                  child: Text(
                      'With the PIXENT, \nyou can download thousands of beautiful wallpapers and create your own personal gallery. You can share them via social media or use them as inspiration for your latest project.',
                      style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic))),
                ),
               const  SizedBox(
                  height: 16,
                ),
                AppButtonDesingOne(
                    bacgoundColor: AppColors.darkYelloColor,
                    sliderColor: AppColors.greenDarkColor,
                    text: 'SIGN IN',
                    paddingsize: 50,
                    onPressed: () => Get.to(()=>const SignIn()),),
                const SizedBox(
                  height: 16,
                ),
                AppButtonDesingOne(
                    bacgoundColor: AppColors.redColor,
                    sliderColor: AppColors.greenDarkColor,
                    text: 'SIGN UP',
                    paddingsize: 50,
                    onPressed: () => Get.to(()=>const SignUp()),)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
