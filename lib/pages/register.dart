import 'package:book_store/core/Colors.dart';
import 'package:book_store/pages/login.dart';
import 'package:book_store/widgets/input_field.dart';
import 'package:book_store/widgets/nav_button.dart';
import 'package:book_store/widgets/nav_text_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Hello! Register to get started',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DMSerifDisplay',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            InputField(
              HintText: 'Username',
            ),
            SizedBox(height: 20.0),
            InputField(
              HintText: 'Email',
            ),
            SizedBox(height: 20.0),
            InputField(
              HintText: 'Password',
            ),
            SizedBox(height: 20.0),
            InputField(
              HintText: 'Confirm Password',
            ),
            SizedBox(height: 20.0),
            NavButton(
                text: 'Register',
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                },
                Textcolor: AppColors.whiteColor,
                backgroundColor: AppColors.primaryColor,
              ),
              SizedBox(height: 200.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DMSerifDisplay',
                      )),
                  NavTextButton(
                    ButtonText: 'Login Now',
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    Textcolor: AppColors.primaryColor,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
