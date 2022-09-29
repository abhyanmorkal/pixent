import 'package:carousel_slider/carousel_slider.dart';
import 'package:pixent/imports/imports.dart';
import 'package:pixent/utility/widgets/catagoury_card.dart';

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
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                     Container(
                      height: 50,
                      child: Image.asset('assets/images/profile.png')),
                      const SizedBox(
                        width: 20,
                      ),
                      FittedBox(
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: -20,
                          children: [
                            WelcomeText(
                                text: 'HEY!',
                                color: AppColors.darkYelloColor,
                                fontSize: 40),
                            WelcomeText(
                                text: 'ROHIT',
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
                child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/noimage.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/noimage1.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/noimage2.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/noimage3.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                  options: CarouselOptions(
                      height: 300,
                      viewportFraction: 0.85,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayCurve: Curves.easeInOut),
                ),
              ),
             const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Catagoury',
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
              ),
               
               Container(
                height: 150,
                 child: ListView(
                  scrollDirection: Axis.horizontal,
                   children:const [
                   CatagouryCard(),
                   CatagouryCard(),
                   CatagouryCard(),
                   CatagouryCard(),
                   CatagouryCard(),
                   CatagouryCard(),
                   CatagouryCard(),
                   
                   
                   ]
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
