import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/02_1%20Signup/components/signup_background.dart';
import 'package:flutter_auth/Screens/A_05%20Teacher_Busy_Days_And_Times/Teacher_Busy_Days_And_Times_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_input_field_BIO.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

int v = -1;
bool v1 = false;
bool v2 = false;
bool v3 = false;
int v4 = -1;
int v5 = -1;
bool v6 = false;
bool v7 = false;
bool v8 = false;
bool v9 = false;
bool v10 = false;
bool v11 = false;
int v12 = -1;
List<dynamic> productTypesList = [
  {"id": "الصف الأول", "name": "الصف الأول"},
  {"id": "الصف الثاني", "name": "الصف الثاني"},
  {"id": "الصف الثالث", "name": "الصف الثالث"},
  {"id": "الصف الرابع", "name": "الصف الرابع"},
  {"id": "الصف الخامس", "name": "الصف الخامس"},
  {"id": "الصف السادس", "name": "الصف السادس"},
  {"id": "الصف السابع", "name": "الصف السابع"},
  {"id": "الصف الثامن", "name": "الصف الثامن"},
  {"id": "الصف التاسع", "name": "الصف التاسع"},
  {"id": "الصف العاشر", "name": "الصف العاشر"},
  {"id": "الصف الحادي عشر", "name": "الصف الحادي عشر"},
  {"id": "الصف الباكالوريا", "name": "الصف الباكالوريا"},
];

class StudentSignupBody extends StatefulWidget {
  @override
  State<StudentSignupBody> createState() => _StudentSignupBodyState();
}

@override
void initState() {}

class _StudentSignupBodyState extends State<StudentSignupBody> {
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
                //إنشاء حساب مدرس
                Text(
                  "إنشاء حساب مدرس  ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: size.height * 0.04),

                //نوع الحساب
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "نوع الحساب",
                      style: TextStyle(
                          color: kColor5, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              v12 = 1;
                            });
                          },
                          child: Text(
                            'ولي أمر',
                            style: TextStyle(
                              color: (v12 == 1) ? Colors.white : kPrimaryColor,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: BorderSide(
                                color: (v12 == 1)
                                    ? Color.fromRGBO(226, 247, 255, 0)
                                    : kPrimaryColor,
                              ),
                              backgroundColor: (v12 == 1)
                                  ? kColor5
                                  : Color.fromRGBO(226, 247, 255, 0),
                              shadowColor: (v12 == 1)
                                  ? Colors.grey
                                  : Color.fromRGBO(226, 247, 255, 0),
                              elevation: 3),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              v12 = 2;
                            });
                          },
                          child: Text(
                            "طالب",
                            style: TextStyle(
                              color: (v12 == 2) ? Colors.white : kPrimaryColor,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: BorderSide(
                                  color: (v12 == 2)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor),
                              backgroundColor: (v12 == 2)
                                  ? kColor5
                                  : Color.fromRGBO(226, 247, 255, 0),
                              shadowColor: (v12 == 2)
                                  ? Colors.grey
                                  : Color.fromRGBO(226, 247, 255, 0),
                              elevation: 3),
                        ),
                      ]),
                ),
                SizedBox(height: size.height * 0.01),

                //الإسم
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "الإسم",
                      style: TextStyle(
                          color: kColor5, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                RoundedInputField(
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.01),

                //تاريخ الميلاد
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "تاريخ الميلاد",
                      style: TextStyle(
                          color: kColor5, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                OutlinedButton(
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2023))
                        .then((data) {
                      setState(() {
                        v11 = !v11;
                      });
                    });
                  },
                  child: Text(
                    ' تاريخ الميلاد',
                    style: TextStyle(
                      color: (v11 == true) ? Colors.white : kPrimaryColor,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: BorderSide(
                        color: (v11 == true)
                            ? Color.fromRGBO(226, 247, 255, 0)
                            : kPrimaryColor,
                      ),
                      backgroundColor: (v11 == true)
                          ? kColor5
                          : Color.fromRGBO(226, 247, 255, 0),
                      shadowColor: (v11 == true)
                          ? Colors.grey
                          : Color.fromRGBO(226, 247, 255, 0),
                      elevation: 3),
                ),
                SizedBox(height: size.height * 0.02),

                //الجنس
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "الجنس    ",
                      style: TextStyle(
                          color: kColor5, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
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
                            'أنثى',
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
                            "ذكر",
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
                SizedBox(height: size.height * 0.01),

                //عنوان السكن
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "عنوان السكن",
                      style: TextStyle(
                          color: kColor5, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                RoundedInputField(
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.01),

                //نوع فرع الدراسة
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "نوع فرع الدراسة",
                      style: TextStyle(
                          color: kColor5, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v6 = !v6;
                                });
                              },
                              child: Text(
                                'معلوماتية',
                                style: TextStyle(
                                  color: (v6 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (v6 == true)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (v6 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v6 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v7 = !v7;
                                });
                              },
                              child: Text(
                                "أدبي",
                                style: TextStyle(
                                  color: (v7 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                      color: (v7 == true)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor),
                                  backgroundColor: (v7 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v7 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v8 = !v8;
                                });
                              },
                              child: Text(
                                'علمي',
                                style: TextStyle(
                                  color: (v8 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (v8 == true)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (v8 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v8 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v9 = !v9;
                                });
                              },
                              child: Text(
                                'تجاري',
                                style: TextStyle(
                                  color: (v9 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (v9 == true)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (v9 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v9 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v10 = !v10;
                                });
                              },
                              child: Text(
                                "شريعة",
                                style: TextStyle(
                                  color: (v10 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                      color: (v10 == true)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor),
                                  backgroundColor: (v10 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v10 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                          ]),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),

                //الدرجلة التعليمية
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "الدرجلة التعليمية ",
                  "Select",
                  "",
                  productTypesList,
                  (onChangedVal) {},
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return 'الرجاء إختيار الخيار المناسب';
                    }
                    return null;
                  },
                  borderColor: kColor5,
                  borderRadius: 12,
                ),
                SizedBox(height: size.height * 0.01),

                //BIO
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "BIO",
                      style: TextStyle(
                          color: kColor5, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                RoundedInputFieldBIO(
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.01),

                //التالي
                RoundedButton(
                  text: "التالي  ",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TeacherBusyDaysAndTimesScreen();
                        },
                      ),
                    );
                  },
                ),

                SizedBox(height: size.height * 0.01),
              ]),
            ),
          ]),
        ],
      ),
    ));
  }
}
