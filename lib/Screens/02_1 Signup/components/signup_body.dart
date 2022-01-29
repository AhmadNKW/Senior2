import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/02_1%20Signup/components/signup_background.dart';
import 'package:flutter_auth/Screens/02_2%20Login/login_screen.dart';
import 'package:flutter_auth/Screens/03%20Verification/verification_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

int v = -1;

class SignupBody extends StatefulWidget {
  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: size.height * 0.05),
          SvgPicture.asset("assets/icons/Drousi.svg"),
          Column(children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
              width: 350,
              padding: EdgeInsetsDirectional.all(22),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      color: Colors.grey.withOpacity(0.8),
                    )
                  ]),
              child: Column(children: [
                Text(
                  "إنشاء حساب جديد ؟  ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: size.height * 0.01),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              v = 1;
                            });
                          },
                          child: Text(
                            'طالـب  ',
                            style: TextStyle(
                              color: (v == 1) ? Colors.white : kPrimaryColor,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: BorderSide(
                                color: (v == 1)
                                    ? Color.fromRGBO(226, 247, 255, 0)
                                    : kPrimaryColor,
                              ),
                              backgroundColor: (v == 1)
                                  ? kColor5
                                  : Color.fromRGBO(226, 247, 255, 0),
                              shadowColor: (v == 1)
                                  ? Colors.grey
                                  : Color.fromRGBO(226, 247, 255, 0),
                              elevation: 3),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              v = 2;
                            });
                          },
                          child: Text(
                            "معلم",
                            style: TextStyle(
                              color: (v == 2) ? Colors.white : kPrimaryColor,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: BorderSide(
                                  color: (v == 2)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor),
                              backgroundColor: (v == 2)
                                  ? kColor5
                                  : Color.fromRGBO(226, 247, 255, 0),
                              shadowColor: (v == 2)
                                  ? Colors.grey
                                  : Color.fromRGBO(226, 247, 255, 0),
                              elevation: 3),
                        ),
                      ]),
                ),
                SizedBox(height: size.height * 0.005),

                RoundedInputField(
                  hintText: "رقم هاتفك",
                  onChanged: (value) {},
                ),

                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.01),

                //Signup
                RoundedButton(
                  text: "إنشاء حساب  ",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return VerificationScreen();
                        },
                      ),
                    );
                  },
                ),

                SizedBox(height: size.height * 0.01),

                //dont have an account?
                AlreadyHaveAnAccountCheck(
                  login: false,
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
              ]),
            ),
          ]),
        ],
      ),
    ));
  }
}
