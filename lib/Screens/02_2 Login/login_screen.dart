import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/02_1%20Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/S_04%20Student_Material/student_material_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/components/welcome_background.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
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
                  child: Column(
                    children: [
                      Text(
                        "تسجيل الدخول ؟  ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),

                      SizedBox(height: size.height * 0.01),

                      RoundedInputField(
                        hintText: "اسم المستخدم",
                        onChanged: (value) {},
                      ),

                      RoundedPasswordField(
                        onChanged: (value) {},
                      ),
                      SizedBox(height: size.height * 0.01),

                      //Signin
                      RoundedButton(
                        text: "تسجيل الدخول",
                        press: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return StudentMaterialScreen();
                            },
                          ));
                        },
                      ),
                      SizedBox(height: size.height * 0.01),

                      //dont have an account?
                      AlreadyHaveAnAccountCheck(
                        login: true,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignupScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
