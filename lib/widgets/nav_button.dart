import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.text,
    required this.onPressed, required this.Textcolor, required this.backgroundColor,
  });
  final String text;
  final Function() onPressed;
  final Color Textcolor; 
  final Color backgroundColor;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(
              color: Textcolor, fontSize: 15, fontFamily: "DMSerifDisplay"),
        ),
      ),
    );
  }
}
