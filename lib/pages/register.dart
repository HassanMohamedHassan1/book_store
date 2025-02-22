import 'package:book_store/core/Colors.dart';
import 'package:book_store/pages/login.dart';
import 'package:book_store/widgets/input_field.dart';
import 'package:book_store/widgets/nav_button.dart';
import 'package:book_store/widgets/nav_text_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
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
                const SizedBox(height: 20.0),
                InputField(
                  errorText: 'Please enter a valid username',
                  HintText: 'Username',
                  keyboardType: TextInputType.text,
                  IsPassword: false,
                ),
                const SizedBox(height: 20.0),
                InputField(
                  errorText: 'Please enter a valid email',
                  HintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  IsPassword: false,
                ),
                const SizedBox(height: 20.0),
                InputField(
                  errorText: 'Please enter a valid password',
                  HintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  IsPassword: true,
                ),
                const SizedBox(height: 20.0),
                InputField(
                  errorText: 'Please enter The same password',
                  HintText: 'Confirm Password',
                  keyboardType: TextInputType.visiblePassword,
                  IsPassword: true,
                ),
                const SizedBox(height: 20.0),
                NavButton(
                  text: 'Register',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    }
                  },
                  Textcolor: AppColors.whiteColor,
                  backgroundColor: AppColors.primaryColor,
                ),
                const SizedBox(height: 200.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?',
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
        ),
      ),
    );
  }
}
