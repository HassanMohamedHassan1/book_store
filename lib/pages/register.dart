import 'package:book_store/core/Colors.dart';
import 'package:book_store/core/globals.dart';
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
                  obscureText: Attributes.isobscure,
                ),
                const SizedBox(height: 20.0),
                const InputField(
                  errorText: 'Please enter a valid email',
                  HintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20.0),
                InputField(
                  errorText: 'Please enter a valid password',
                  HintText: 'Password',
                  obscureText: Attributes.isobscure,
                  keyboardType: TextInputType.visiblePassword,
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
                const SizedBox(height: 20.0),
                InputField(
                  errorText: 'Please enter The same password',
                  HintText: 'Confirm Password',
                  obscureText: Attributes.isobscure,
                  keyboardType: TextInputType.visiblePassword,
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
