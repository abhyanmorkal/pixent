import 'package:card_swiper/card_swiper.dart';
import 'package:pixent/imports/imports.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      image: const AssetImage('assets/images/home_screen_back.png'),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              //ignore: sized_box_for_whitespace
              Container(
                // color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            SvgPicture.asset('assets/images/profile.svg'),
                            Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  //  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/doodle.png')),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      FittedBox(
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: -20,
                          children: [
                            WelcomeText(
                                text: 'Hey!',
                                color: AppColors.darkYelloColor,
                                fontSize: 40),
                            WelcomeText(
                                text: 'Rohit',
                                color: AppColors.darkYelloColor,
                                fontSize: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                // color: Colors.white,
                height: 200,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "https://via.placeholder.com/288x188",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 10,
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, -4),
                  color: Colors.black,
                ),
              ]),
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: GNav(
                backgroundColor: Colors.white,
                color: Colors.black,
                activeColor: Colors.white,
                curve: Curves.linear,
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.all(8),
                tabBorderRadius: 5,
                tabBackgroundColor: Colors.red,
                haptic: true,
                gap: 8,
                tabs: [
                  GButton(
                    icon: Icons.home_rounded,
                    text: 'HOME',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'SEARCH',
                  ),
                  GButton(
                    icon: Icons.note_add_outlined,
                    text: 'CREATE',
                  ),
                  GButton(
                    icon: Icons.dashboard,
                    text: 'PROFILE',
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
