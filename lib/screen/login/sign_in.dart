import 'package:pixent/imports/imports.dart';
import 'package:pixent/screen/home/home_screen.dart';

import '../../utility/widgets/background_img_widget.dart';
import '../../utility/widgets/input_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      image: AssetImage('assets/images/purplebackground2.png'),
      child: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.purppleColor, Colors.transparent])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      // color: Colors.white,
                      child: Stack(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 70, right: 5, left: 5),
                          child: FittedBox(
                            child: WelcomeText(
                                text: 'WELCOME',
                                color: AppColors.lightYellowColor,
                                fontSize: 60),
                          ),
                        ),
                      ),
                      Center(
                        child: FittedBox(
                          child: Container(
                            margin: const EdgeInsets.only(top: 140),
                            child: WelcomeText(
                                text: 'Back Geek',
                                color: AppColors.lightYellowColor,
                                fontSize: 70),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    height: 60,
                    // color: Colors.black,
                    child: FittedBox(
                      child: Text(
                          "You can't please everyone. But we sure did try.",
                          style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    // color: Colors.white,
                    child: WelcomeText(
                        text: 'Log In',
                        color: AppColors.lightYellowColor,
                        fontSize: 40),
                  ),

                  /*******************************
                   * 
                   * Form fild for sign up
                   * 
                   ***********************************/
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 25),
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 40),

                    // height: 100,

                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        boxShadow: const [
                          BoxShadow(offset: Offset(4, 4), color: Colors.black)
                        ]),

                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        InputTextField(
                          hintText: 'abhyan@gmail.com',
                          isPssword: false,
                          controller: _emailController,
                          lebelText: 'Email',
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        InputTextField(
                          hintText: 'Love@u@3000',
                          isPssword: true,
                          controller: _passwordController,
                          lebelText: 'Password',
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: AppButtonDesingOne(
                            bacgoundColor: AppColors.darkYelloColor,
                            sliderColor: AppColors.greenLightColor,
                            text: 'Nice..',
                            onPressed: (() =>
                                Get.to(() => const HomeScreenWidget())),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                           const Text(
                              'Not A Member ? ',
                              style: TextStyle(
                                  fontFamily: 'FONTH',
                                  color: Colors.black54,
                                  fontSize: 20),
                            ),
                            InkWell(
                              onTap: ()=> Get.to(const SignUp(),transition: Transition.cupertino),
                              child: const Text(
                                'Register Now',
                                style: TextStyle(
                                    fontFamily: 'FONTH',
                                    color: Colors.blue,
                                    fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  /*******************************
                   * 
                   * svg
                   * 
                   ***********************************/
                ]),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-1, -0.2),
          child: SvgPicture.asset(
            'assets/images/wave.svg',
            width: 80,
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(1, -0.2),
          child: SvgPicture.asset(
            'assets/images/smile.svg',
            width: 80,
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(1, -1),
          child: SvgPicture.asset(
            'assets/images/skate.svg',
            width: 100,
            fit: BoxFit.contain,
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-1, 0.7),
          child: SvgPicture.asset(
            'assets/images/Frame.svg',
            width: 60,
            fit: BoxFit.contain,
          ),
        ),
      ]),
    );
  }
}
