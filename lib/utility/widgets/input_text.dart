import 'package:pixent/imports/imports.dart';

class InputTextField extends StatelessWidget {
  final String lebelText;
  final String hintText;
  final bool isPssword;
  final TextEditingController controller;
  // final bool readOnly;

  const InputTextField({
    super.key,
    required this.hintText,
    required this.lebelText,
    required this.isPssword,
    required this.controller,
    // required this.readOnly
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: Colors.black, offset: Offset(4, 4))
            ],
            border: Border.all(width: 2)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: TextField(
            controller: controller,
            // readOnly: null ==readOnly ? false :true,
            // ignore: unnecessary_null_comparison

            obscureText: isPssword ? true : false,
            decoration: InputDecoration(
                labelText: null == lebelText ? '' : lebelText,
                labelStyle: const TextStyle(
                  fontFamily: 'FONTH',
                  fontSize: 14,
                  color: Colors.black87,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.clear,
                  ),
                  onPressed: () {
                    controller.clear();
                  },
                ),
                border: InputBorder.none,
                hintText: null == hintText ? '' : hintText,
                hintStyle: const TextStyle(
                  fontFamily: 'FONTH',
                  fontSize: 14,
                  color: Colors.black54,
                )),
          ),
        ),
      ),
    );
  }
}
