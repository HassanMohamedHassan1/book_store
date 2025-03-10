import 'package:book_store/core/Colors.dart';
import 'package:book_store/pages/login.dart';
import 'package:book_store/widgets/input_field.dart';
import 'package:book_store/widgets/nav_button.dart';
import 'package:book_store/widgets/nav_text_button.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  Forgotpassword({super.key});
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Forgot Password?',
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
                  HintText: 'Send code',
                  errorText: 'Please enter a valid code',
                  keyboardType: TextInputType.number, IsPassword: false,
                ),
                SizedBox(height: 20.0),
                NavButton(
                  text: 'Send Code',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    }
                  },
                  Textcolor: AppColors.whiteColor,
                  backgroundColor: AppColors.primaryColor,
                ),
                SizedBox(height: 200.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remember Password?',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DMSerifDisplay',
                        )),
                    NavTextButton(
                      ButtonText: 'Login ',
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
