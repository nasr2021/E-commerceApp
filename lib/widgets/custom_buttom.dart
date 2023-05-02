import 'package:flutter/material.dart';

import 'custom_text.dart';

const primaryColor = Color.fromARGB(255, 65, 88, 183);

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final void Function() onPress;

  CustomButton({
    required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10), primary: Colors.purple,
        //backgroundColor: primaryColor,
        //backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
      onPressed: onPress,
      child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      ),
    );
  }
}
