import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/03%20Verification/components/verification_background.dart';
import 'package:flutter_auth/Screens/A_04%20Teacher_Signup/teacher_signup_screen.dart';
import 'package:flutter_auth/components/otp.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationBody extends StatefulWidget {
  const VerificationBody({
    Key key,
  }) : super(key: key);

  @override
  State<VerificationBody> createState() => _VerificationBodyState();
}

class _VerificationBodyState extends State<VerificationBody> {
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
                child: Column(
                  children: [
                    Text(
                      "التحقق من الهاتف  ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),

                    SizedBox(height: size.height * 0.01),

                    Text(
                      "أدخل الرمز الذي أرسلناه للتو",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),

                    SizedBox(height: size.height * 0.01),

                    Text(
                      "+963 954438951",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: kColor5),
                    ),

                    SizedBox(height: size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OTP(first: true, last: false),
                        OTP(first: false, last: false),
                        OTP(first: false, last: false),
                        OTP(first: false, last: true),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),

                    //Signin
                    RoundedButton(
                      text: "التالي",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return TeacherSignupScreen();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: size.height * 0.01),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "إعادة إرسال",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: kColor5),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "لم تحصل على الرمز ؟",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height * 0.01),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "تعديل الرقم",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: kColor5),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "الرقم غير صحيح ؟",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
