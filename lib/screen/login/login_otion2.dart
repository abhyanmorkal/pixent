// ignore_for_file: depend_on_referenced_packages
import 'package:pixent/imports/imports.dart';

// ignore: camel_case_types
class Login_option_ extends StatefulWidget {
  const Login_option_({super.key});

  @override
  State<Login_option_> createState() => _Login_option_State();
}

// ignore: camel_case_types
class _Login_option_State extends State<Login_option_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: const AlignmentDirectional(0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            color: AppColors.orangeColor,
          ),
          child: Stack(fit: StackFit.expand, children: [
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/background_overlay.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: SvgPicture.asset(
                'assets/images/emogi.svg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 130,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FittedBox(
                              child: LogoText(
                                  text: 'PIXENT',
                                  color: AppColors.darkYelloColor,
                                  fontSize: 100)),
                        )),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.8, 0),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                          child: SvgPicture.asset(
                        'assets/images/Logo.svg',
                        width: 100,
                        height: 100,
                      )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(47, 0, 47, 0),
                      // ignore: sized_box_for_whitespace
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
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: AppButtonDesingOne(
                        bacgoundColor: AppColors.darkYelloColor,
                        sliderColor: AppColors.greenDarkColor,
                        text: 'SIGN IN',
                  
                        onPressed: () => Get.to(() => const SignIn()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: AppButtonDesingOne(
                        bacgoundColor: AppColors.darkYelloColor,
                        sliderColor: AppColors.greenDarkColor,
                        text: 'SIGN UP',
                        
                        onPressed: () => Get.to(() => const SignUp()),
                      ),
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
