import 'package:flutter/cupertino.dart';
import 'package:pixent/imports/imports.dart';


// ignore: must_be_immutable
class AppButtonDesingOne extends StatelessWidget {
  final Color bacgoundColor;
  final Color sliderColor;
  final String text;
  final GestureTapCallback onPressed;
  Color? fontcolor;
  AppButtonDesingOne(
      {super.key,
      required this.bacgoundColor,
      required this.sliderColor,
      required this.text,
      required this.onPressed,
      this.fontcolor = Colors.black, });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                state.isPerformingAction ? "LOADING." : text,
                style:  TextStyle(
                  fontSize: 25,
                  fontFamily: 'FONTH',
                  color:  fontcolor == Colors.black ? Colors.black : Colors.white,
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
          await Future.delayed(const Duration(seconds: 1), (onPressed));
        },
      ),
    );
  }
}
