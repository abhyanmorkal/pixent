import 'package:pixent/imports/imports.dart';

class LoginOptionWidget extends StatefulWidget {
  const LoginOptionWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginOptionWidgetState createState() => _LoginOptionWidgetState();
}

class _LoginOptionWidgetState extends State<LoginOptionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      key: scaffoldKey,
      color: const Color.fromARGB(255, 251, 84, 7),
      child: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 251, 84, 7),

                // color: FlutterFlowTheme.of(context).alternate,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment:const  AlignmentDirectional(0, 0),
                    child: Image.asset(
                      'assets/images/background_overlay.png',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: SvgPicture.asset(
                      'assets/images/emogi.svg',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment:const  AlignmentDirectional(0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 184,
                            child: Image.asset(
                              'assets/images/Text_Logo.png',
                              width: 324,
                              height: 116,
                              fit: BoxFit.none,
                            ),
                          ),
                          Align(
                            alignment:const  AlignmentDirectional(-0.7, 0),
                            // ignore: sized_box_for_whitespace
                            child: Container(
                              width: 100,
                              height: 100,
                              
                              child: SvgPicture.asset(
                                'assets/images/Logo.svg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(47, 0, 47, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0x00FFBE0B),
                              ),
                              child: Text(
                                  'With the PIXENT, \nyou can download thousands of beautiful wallpapers and create your own personal gallery. You can share them via social media or use them as inspiration for your latest project.',
                                  // style: FlutterFlowTheme.of(context)
                                  //     .bodyText1
                                  //     .override(
                                  //       fontFamily: 'Rubik',
                                  //       color: FlutterFlowTheme.of(context)
                                  //           .lineColor,
                                  //       fontSize: 24,
                                  //       fontWeight: FontWeight.w500,
                                  //       fontStyle: FontStyle.italic,
                                  //     ),
                                  style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic))),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 180,
                            decoration: const  BoxDecoration(
                              color: Color(0x00FFBE0B),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/sign_in.png',
                                  width: double.infinity,
                                  height: 90,
                                  fit: BoxFit.none,
                                ),
                                Image.asset(
                                  'assets/images/sign_up.png',
                                  width: double.infinity,
                                  height: 90,
                                  fit: BoxFit.none,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
