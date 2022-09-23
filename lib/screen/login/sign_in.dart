import 'package:flutter/material.dart';
import 'package:pixent/utility/colors/color.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/purpleOverlay1.png'),fit:BoxFit.cover,),
        color: AppColors.purppleColor
       ),
    
    );
  }
}