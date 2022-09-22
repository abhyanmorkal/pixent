import 'package:flutter/material.dart';
import 'package:pixent/utility/colors/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixent/utility/font/welcome_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(color: AppColors.purppleColor),
        child: Stack(fit: StackFit.expand, children: [
          SvgPicture.asset(
            'assets/images/purpleOverlay.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/purpleOverlay.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.fill,
          ),
          SvgPicture.asset(
            'assets/images/emogi2.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.bottomCenter,
                  // color: AppColors.darkPinkColor,
                  child: WelcomeText(text: 'WELCOME', color: AppColors.darkYelloColor, fontSize: 60)
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(),
                  // height: 130,
                  alignment: Alignment.topCenter,
                  // color: AppColors.redColor,
                  child: FittedBox(child: WelcomeText(color: AppColors.darkYelloColor, text: 'Geek',fontSize: 120,))
                ),
              Container(
                 width: MediaQuery.of(context).size.width,
                  height: 100,
                  margin: EdgeInsets.only(top: 200),
                  alignment: Alignment.center,
                child: FittedBox(
                  child: Text('JOIN OUR COMMUNITY..',
                          style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic))),
                ),
              ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
