import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/01%20Welcome/components/welcome_background.dart';
import 'package:flutter_auth/Screens/02_1%20Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/02_2%20Login/login_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeBody extends StatelessWidget {
  get kPrimaryLightColor => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/Drousi.svg",
              // height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "قم بتسجيل الدخول أو إنشاء حساب \n جديد لمشاهدة تفاصيل حسابك",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 1.5,
                height: 1.5,
                fontSize: 20,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "تسجيل الدخول",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "إنشاء حساب",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
