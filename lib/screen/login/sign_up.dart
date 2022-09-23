import '/imports/imports.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(color: AppColors.purppleColor),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.bottomCenter,
                    // color: AppColors.darkPinkColor,
                    child: WelcomeText(
                        text: 'WELCOME',
                        color: AppColors.lightYellowColor,
                        fontSize: 60)),
                Container(
                    margin: const EdgeInsets.only(top: 70),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(),
                    // height: 130,
                    alignment: Alignment.topCenter,
                    // color: AppColors.redColor,
                    child: FittedBox(
                        child: WelcomeText(
                      color: AppColors.lightYellowColor,
                      text: 'Geek',
                      fontSize: 120,
                    ))),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  margin: const EdgeInsets.only(top: 220),
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text('JOIN OUR COMMUNITY..',
                        style: GoogleFonts.rubik(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic))),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // height: 100,
            margin: const EdgeInsets.only(
                top: 300, right: 30, left: 30, bottom: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black,width: 4),
              boxShadow: [
                BoxShadow(offset: Offset(4,4),
                color: Colors.black)
              ]
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.black,offset: Offset(4,4))
                    ],
                    border: Border.all(width: 2)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ),
                ),
              )
            ]),
          ),
          // SvgPicture.asset(
          //   'assets/images/emogi2.svg',
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height * 1,
          //   fit: BoxFit.fill,
          // ),
        ]),
      ),
    ));
  }
}
