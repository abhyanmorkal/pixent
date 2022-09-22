import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pixent/screen/login/sign_up.dart';
import 'package:slide_action/slide_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButtonDesingOne extends StatelessWidget {
  final Color bacgoundColor;
  final Color sliderColor;
  final String text;
  final GestureTapCallback onPressed;
  double paddingsize;
  AppButtonDesingOne(
      {super.key,
      required this.bacgoundColor,
      required this.sliderColor,
      required this.text,
      required this.onPressed,
      required this.paddingsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingsize),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: SlideAction(
          trackBuilder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bacgoundColor,
                border: Border.all(width: 2),
                boxShadow: const [
                  BoxShadow(color: Colors.black, offset: Offset(3, 3)),
                ],
              ),
              child: Center(
                child: Text(
                  state.isPerformingAction ? "LODING." : text,
                  style: const TextStyle(
                    fontSize: 25,
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
                color: sliderColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2),
                boxShadow: const [
                  BoxShadow(color: Colors.black, offset: Offset(1, 1)),
                ],
              ),
              child: Center(
                child: state.isPerformingAction
                    ? const CupertinoActivityIndicator(
                        color: Colors.black,
                      )
                    : SvgPicture.asset('assets/images/direction_button.svg'),
              ),
            );
          },
          action: () async {
            await Future.delayed(
              const Duration(seconds: 2),
              (onPressed
              )
            );
          },
        ),
      ),
    );
  }
}
