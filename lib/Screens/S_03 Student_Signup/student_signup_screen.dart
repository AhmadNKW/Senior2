import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_04%20Student_Material/student_material_body.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_input_field_BIO.dart';
import 'package:flutter_auth/components/rounded_input_field_number.dart';
import 'package:flutter_auth/components/welcome_background.dart';
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
bool birthDate = false;
int accountType = -1;
int category = -1;

int gender = -1;
bool birthdate = false;

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

class StudentSignupScreen extends StatefulWidget {
  @override
  State<StudentSignupScreen> createState() => _StudentSignupScreenState();
}

@override
void initState() {}

class _StudentSignupScreenState extends State<StudentSignupScreen> {
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
                child: Column(children: [
                  //إنشاء حساب مدرس
                  Text(
                    "إنشاء حساب طالب  ",
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
                                accountType = 1;
                              });
                            },
                            child: Text(
                              'ولي أمر',
                              style: TextStyle(
                                color: (accountType == 1)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (accountType == 1)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (accountType == 1)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (accountType == 1)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(20)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                accountType = 2;
                              });
                            },
                            child: Text(
                              "طالب",
                              style: TextStyle(
                                color: (accountType == 2)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                    color: (accountType == 2)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor),
                                backgroundColor: (accountType == 2)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (accountType == 2)
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

                  //رقم الهاتف
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "رقم الهاتف",
                        style: TextStyle(
                            color: kColor5, fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                  RoundedInputFieldNumber(
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
                          birthDate = !birthDate;
                        });
                      });
                    },
                    child: Text(
                      ' تاريخ الميلاد',
                      style: TextStyle(
                        color:
                            (birthDate == true) ? Colors.white : kPrimaryColor,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(
                          color: (birthDate == true)
                              ? Color.fromRGBO(226, 247, 255, 0)
                              : kPrimaryColor,
                        ),
                        backgroundColor: (birthDate == true)
                            ? kColor5
                            : Color.fromRGBO(226, 247, 255, 0),
                        shadowColor: (birthDate == true)
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
                                gender = 1;
                              });
                            },
                            child: Text(
                              'أنثى',
                              style: TextStyle(
                                color: (gender == 1)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (gender == 1)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (gender == 1)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (gender == 1)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(20)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                gender = 2;
                              });
                            },
                            child: Text(
                              "ذكر",
                              style: TextStyle(
                                color: (gender == 2)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                    color: (gender == 2)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor),
                                backgroundColor: (gender == 2)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (gender == 2)
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

                  //نوع الفرع الطالب
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "نوع فرع الطالب",
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
                                    category = 1;
                                  });
                                },
                                child: Text(
                                  'معلوماتية',
                                  style: TextStyle(
                                    color: (category == 1)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (category == 1)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (category == 1)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category == 1)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    category = 2;
                                  });
                                },
                                child: Text(
                                  "أدبي",
                                  style: TextStyle(
                                    color: (category == 2)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                        color: (category == 2)
                                            ? Color.fromRGBO(226, 247, 255, 0)
                                            : kPrimaryColor),
                                    backgroundColor: (category == 2)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category == 2)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    category = 3;
                                  });
                                },
                                child: Text(
                                  'علمي',
                                  style: TextStyle(
                                    color: (category == 3)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (category == 3)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (category == 3)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category == 3)
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
                                    category = 4;
                                  });
                                },
                                child: Text(
                                  'تجاري ',
                                  style: TextStyle(
                                    color: (category == 4)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (category == 4)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (category == 4)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category == 4)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    category = 5;
                                  });
                                },
                                child: Text(
                                  "شريعة",
                                  style: TextStyle(
                                    color: (category == 5)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                        color: (category == 5)
                                            ? Color.fromRGBO(226, 247, 255, 0)
                                            : kPrimaryColor),
                                    backgroundColor: (category == 5)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category == 5)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),

                  //الدرجلة التعليمية
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الدرجة التعليمية",
                        style: TextStyle(
                            color: kColor5, fontWeight: FontWeight.w900),
                      )
                    ],
                  ),

                  FormHelper.dropDownWidgetWithLabel(
                    context,
                    "",
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
                            return StudentMaterialBody();
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
      )),
    );
  }
}
