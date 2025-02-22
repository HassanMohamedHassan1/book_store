import 'package:book_store/core/Colors.dart';
import 'package:book_store/core/globals.dart';
import 'package:book_store/pages/ForgotPassword.dart';
import 'package:book_store/pages/register.dart';
import 'package:book_store/widgets/input_field.dart';
import 'package:book_store/widgets/nav_button.dart';
import 'package:book_store/widgets/nav_text_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
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
                          'Welcome back! Glad to see you, again!',
                          maxLines: 2,
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
                    HintText: 'Enter your email',
                    errorText: 'Please enter a valid email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20.0),
                  InputField(
                    HintText: 'Enter your password',
                    errorText: 'Please enter a valid password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: Attributes.isobscure,
                    Icontype: IconButton(
                      icon: Attributes.isobscure
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          Attributes.isobscure = !Attributes.isobscure;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NavTextButton(
                        ButtonText: 'Forgot Password?',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Forgotpassword(),
                            ),
                          );
                        },
                        Textcolor: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  NavButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    Textcolor: AppColors.whiteColor,
                    backgroundColor: AppColors.primaryColor,
                  ),
                  SizedBox(height: 20.0),
                  Text('or Login with',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DMSerifDisplay',
                      )),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset('images/facebook_ic.png'),
                        onPressed: () {},
                      ),
                      SizedBox(width: 50.0),
                      IconButton(
                        icon: Image.asset('images/google_ic.png'),
                        onPressed: () {},
                      ),
                      SizedBox(width: 50.0),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/cib_apple.png'))
                    ],
                  ),
                  SizedBox(height: 200.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DMSerifDisplay',
                          )),
                      NavTextButton(
                        ButtonText: 'Register Now',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
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
      ),
    );
  }
}
