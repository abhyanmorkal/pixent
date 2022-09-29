import 'package:pixent/imports/imports.dart';

class CatagouryCard extends StatelessWidget {
  const CatagouryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child:  Column(
                       children: [Container(
                        height: 100,
                        width: 120,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            width: 2
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(3,3)
                            )
                          ]
                        ),
                       ),
                       Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Cat',style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize:20, 
                          fontStyle: FontStyle.italic
                        ),))
                       ]
                     ),
                   );
  }
}