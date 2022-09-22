import 'package:flutter/material.dart';
import 'package:pixent/utility/colors/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: AppColors.purppleColor
          ),
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
           Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.darkYelloColor,
                  
      
                ),
              )
            ],
           )
      
          ]),
        ),
      )
    );
  }
}