import 'package:pixent/imports/imports.dart';

class BackgroundImageWidget extends StatelessWidget {
  final Widget child;
  final ImageProvider image;
  const BackgroundImageWidget(
      {super.key, required this.child, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: image,fit: BoxFit.cover),
        
      // color: Colors.black
      ),
      
      child: child,
    );
  }
}
