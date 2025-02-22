import 'package:book_store/core/Colors.dart';
import 'package:book_store/pages/login.dart';
import 'package:book_store/pages/register.dart';
import 'package:book_store/widgets/nav_button.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Expanded(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/welcome.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu_book,
                    size: 50,
                    color: Color(0XFFBFA054),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Bookia',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'DMSerifDisplay',
                    ),
                  ),
                ],
              ),
              const Text(
                'Order your book now!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'DMSerifDisplay',
                ),
              ),
              SizedBox(height: 450.0),
              NavButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                Textcolor: AppColors.whiteColor,
                backgroundColor: AppColors.primaryColor,
              ),
              SizedBox(height: 15.0),
              NavButton(
                text: 'Register',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                Textcolor: AppColors.blackColor,
                backgroundColor: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
