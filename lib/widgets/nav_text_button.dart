import 'package:flutter/material.dart';

class NavTextButton extends StatelessWidget {
  const NavTextButton({
    super.key,
    required this.ButtonText,
    required this.onPressed,
    required this.Textcolor,
  });
  final String ButtonText;
  final Function() onPressed;
  final Color Textcolor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        ButtonText,
        style: TextStyle(
          color: Textcolor,
          fontSize: 14,
          fontFamily: 'DMSerifDisplay',
        ),
      ),
    );
  }
}
