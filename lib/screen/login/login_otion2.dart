// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixent/screen/login/sign_in.dart';
import 'package:pixent/utility/font/logotext.dart';
import 'package:pixent/utility/widgets/app_button.dart';
import 'package:pixent/utility/colors/color.dart';

import 'sign_up.dart';

class Login_option_ extends StatefulWidget {
  const Login_option_({super.key});

  @override
  State<Login_option_> createState() => _Login_option_State();
}

class _Login_option_State extends State<Login_option_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: AppColors.orangeColor,
          ),
          child: Stack(fit: StackFit.expand, children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/background_overlay.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: SvgPicture.asset(
                'assets/images/emogi.svg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 130,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: FittedBox(child: LogoText(text: 'PIXENT', color: AppColors.darkYelloColor, fontSize: 100)),
                          )
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.8, 0),
                      child: Container(
                         
                          child: SvgPicture.asset(
                            'assets/images/Logo.svg',
                            width: 100,
                            height: 100,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(47, 0, 47, 0),
                      child: Container(
                        width: double.infinity,
                        // height: 250,
                        child: Text(
                            'With the PIXENT, \nyou can download thousands of beautiful wallpapers and create your own personal gallery. You can share them via social media or use them as inspiration for your latest project.',
                            style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic))),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppButtonDesingOne(
                      bacgoundColor: AppColors.darkYelloColor,
                      sliderColor: AppColors.greenDarkColor,
                      text: 'SIGN IN',
                      paddingsize: 50,
                      onPressed: () => Get.to(() => const SignIn()),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppButtonDesingOne(
                      bacgoundColor: AppColors.darkYelloColor,
                      sliderColor: AppColors.greenDarkColor,
                      text: 'SIGN UP',
                      paddingsize: 50,
                      onPressed: () => Get.to(() => const SignUp()),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
