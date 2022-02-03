// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/02_1%20Signup/components/signup_background.dart';
import 'package:flutter_auth/Screens/A_05%20Teacher_Busy_Days_And_Times/Teacher_Busy_Days_And_Times_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_input_field_BIO.dart';
import 'package:flutter_auth/components/rounded_input_field_number.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

int gender = -1;
bool place_to_teach_pp = false;
bool place_to_teach_th = false;
bool place_to_teach_sh = false;
int gender_teach = -1;
int edu_degree = -1;
bool category_it = false;
bool category_le = false;
bool category_st = false;
bool category_tr = false;
bool category_re = false;
bool birthdate = false;

var class_to_teach = {
  'first': 'false',
  'second': 'false',
  'third': 'false',
  'fourth': 'false',
  'fifth': 'false',
  'sixth': 'false',
  'seventh': 'false',
  'eightth': 'false',
  'ninth': 'false',
  'tenth': 'false',
  'eleventh': 'false',
  'twelfth': 'false'
};

bool parseBool(String text) {
  if (text == 'true') {
    return true;
  } else {
    return false;
  }
}

String parseString(bool bol) {
  if (bol == true)
    return "true";
  else
    return "false";
}

class TeacherSignupBody extends StatefulWidget {
  @override
  State<TeacherSignupBody> createState() => _TeacherSignupBodyState();
}

@override
void initState() {}

class _TeacherSignupBodyState extends State<TeacherSignupBody> {
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
          Column(
            children: [
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
                          birthdate = !birthdate;
                        });
                      });
                    },
                    child: Text(
                      ' تاريخ الميلاد',
                      style: TextStyle(
                        color:
                            (birthdate == true) ? Colors.white : kPrimaryColor,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(
                          color: (birthdate == true)
                              ? Color.fromRGBO(226, 247, 255, 0)
                              : kPrimaryColor,
                        ),
                        backgroundColor: (birthdate == true)
                            ? kColor5
                            : Color.fromRGBO(226, 247, 255, 0),
                        shadowColor: (birthdate == true)
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

                  //رابط حساب الفيسبوك
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "رابط حساب الفيسبوك  ",
                        style: TextStyle(
                            color: kColor5, fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                  RoundedInputField(
                    onChanged: (value) {},
                  ),
                  SizedBox(height: size.height * 0.01),

                  //مكان التدريس
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "مكان التدريس  ",
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
                                place_to_teach_pp = !place_to_teach_pp;
                              });
                            },
                            child: Text(
                              'مكان عام',
                              style: TextStyle(
                                color: (place_to_teach_pp == true)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (place_to_teach_pp == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (place_to_teach_pp == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (place_to_teach_pp == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                place_to_teach_th = !place_to_teach_th;
                              });
                            },
                            child: Text(
                              'بيت المدرس',
                              style: TextStyle(
                                color: (place_to_teach_th == true)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (place_to_teach_th == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (place_to_teach_th == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (place_to_teach_th == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                place_to_teach_sh = !place_to_teach_sh;
                              });
                            },
                            child: Text(
                              'بيت الطالب',
                              style: TextStyle(
                                color: (place_to_teach_sh == true)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (place_to_teach_sh == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (place_to_teach_sh == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (place_to_teach_sh == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ]),
                  ),
                  SizedBox(height: size.height * 0.02),

                  //الجنس المراد تدريسه
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الجنس المراد تدريسه ",
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
                                gender_teach = 1;
                              });
                            },
                            child: Text(
                              'أنثى',
                              style: TextStyle(
                                color: (gender_teach == 1)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (gender_teach == 1)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (gender_teach == 1)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (gender_teach == 1)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(20)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                gender_teach = 2;
                              });
                            },
                            child: Text(
                              'ذكر',
                              style: TextStyle(
                                color: (gender_teach == 2)
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (gender_teach == 2)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (gender_teach == 2)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (gender_teach == 2)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ]),
                  ),
                  SizedBox(height: size.height * 0.02),

                  //تكلفة الساعة
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تكلفة الساعة",
                        style: TextStyle(
                            color: kColor5, fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                  RoundedInputField(
                    onChanged: (value) {},
                  ),
                  SizedBox(height: size.height * 0.01),

                  //الدرجة التعليمية للمدرس
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الدرجة التعليمية للمدرس ",
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
                                    edu_degree = 1;
                                  });
                                },
                                child: Text(
                                  'جامعي',
                                  style: TextStyle(
                                    color: (edu_degree == 1)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (edu_degree == 1)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (edu_degree == 1)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (edu_degree == 1)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    edu_degree = 2;
                                  });
                                },
                                child: Text(
                                  "ثانوي",
                                  style: TextStyle(
                                    color: (edu_degree == 2)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                        color: (edu_degree == 2)
                                            ? Color.fromRGBO(226, 247, 255, 0)
                                            : kPrimaryColor),
                                    backgroundColor: (edu_degree == 2)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (edu_degree == 2)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    edu_degree = 3;
                                  });
                                },
                                child: Text(
                                  'إعدادي',
                                  style: TextStyle(
                                    color: (edu_degree == 3)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (edu_degree == 3)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (edu_degree == 3)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (edu_degree == 3)
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
                                    edu_degree = 4;
                                  });
                                },
                                child: Text(
                                  'دكتورا',
                                  style: TextStyle(
                                    color: (edu_degree == 4)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (edu_degree == 4)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (edu_degree == 4)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (edu_degree == 4)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    edu_degree = 6;
                                  });
                                },
                                child: Text(
                                  "ماستر",
                                  style: TextStyle(
                                    color: (edu_degree == 6)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                        color: (edu_degree == 6)
                                            ? Color.fromRGBO(226, 247, 255, 0)
                                            : kPrimaryColor),
                                    backgroundColor: (edu_degree == 6)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (edu_degree == 6)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),

                  //نوع الفرع المراد تدريسه
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "نوع فرع الطالب المراد تدريسه",
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
                                    category_it = !category_it;
                                  });
                                },
                                child: Text(
                                  'معلوماتية',
                                  style: TextStyle(
                                    color: (category_it == true)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (category_it == true)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (category_it == true)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category_it == true)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    category_le = !category_le;
                                  });
                                },
                                child: Text(
                                  "أدبي",
                                  style: TextStyle(
                                    color: (category_le == true)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                        color: (category_le == true)
                                            ? Color.fromRGBO(226, 247, 255, 0)
                                            : kPrimaryColor),
                                    backgroundColor: (category_le == true)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category_le == true)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    category_st = !category_st;
                                  });
                                },
                                child: Text(
                                  'علمي',
                                  style: TextStyle(
                                    color: (category_st == true)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (category_st == true)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (category_st == true)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category_st == true)
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
                                    category_tr = !category_tr;
                                  });
                                },
                                child: Text(
                                  'تجاري ',
                                  style: TextStyle(
                                    color: (category_tr == true)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                      color: (category_tr == true)
                                          ? Color.fromRGBO(226, 247, 255, 0)
                                          : kPrimaryColor,
                                    ),
                                    backgroundColor: (category_tr == true)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category_tr == true)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    category_re = !category_re;
                                  });
                                },
                                child: Text(
                                  "شريعة",
                                  style: TextStyle(
                                    color: (category_re == true)
                                        ? Colors.white
                                        : kPrimaryColor,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: BorderSide(
                                        color: (category_re == true)
                                            ? Color.fromRGBO(226, 247, 255, 0)
                                            : kPrimaryColor),
                                    backgroundColor: (category_re == true)
                                        ? kColor5
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    shadowColor: (category_re == true)
                                        ? Colors.grey
                                        : Color.fromRGBO(226, 247, 255, 0),
                                    elevation: 3),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),

                  //الدرجة التعليمية للطالب المراد تدريسه
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "الدرجة التعليمية للطالب المراد تدريسه ",
                      style: TextStyle(
                        color: kColor5,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ]),
                  SizedBox(height: size.height * 0.005),
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['third'] = parseString(
                                      !parseBool(class_to_teach['third']));
                                });
                              },
                              child: Text(
                                'الثالث',
                                style: TextStyle(
                                  color: (class_to_teach['third'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['third'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['third'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['third'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['second'] = parseString(
                                      !parseBool(class_to_teach['second']));
                                });
                              },
                              child: Text(
                                'الثاني',
                                style: TextStyle(
                                  color: (class_to_teach['second'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['second'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['second'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['second'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['first'] = parseString(
                                      !parseBool(class_to_teach['first']));
                                });
                              },
                              child: Text(
                                'الأول',
                                style: TextStyle(
                                  color: (class_to_teach['first'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['first'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['first'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['first'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                          ]),
                      SizedBox(height: size.height * 0.01),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['sixth'] = parseString(
                                      !parseBool(class_to_teach['sixth']));
                                });
                              },
                              child: Text(
                                'السادس',
                                style: TextStyle(
                                  color: (class_to_teach['sixth'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['sixth'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['sixth'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['sixth'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['fifth'] = parseString(
                                      !parseBool(class_to_teach['fifth']));
                                });
                              },
                              child: Text(
                                'الخامس',
                                style: TextStyle(
                                  color: (class_to_teach['fifth'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['fifth'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['fifth'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['fifth'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['fourth'] = parseString(
                                      !parseBool(class_to_teach['fourth']));
                                });
                              },
                              child: Text(
                                'الرابع',
                                style: TextStyle(
                                  color: (class_to_teach['fourth'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['fourth'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['fourth'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['fourth'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                          ]),
                      SizedBox(height: size.height * 0.01),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['ninth'] = parseString(
                                      !parseBool(class_to_teach['ninth']));
                                });
                              },
                              child: Text(
                                'التاسع',
                                style: TextStyle(
                                  color: (class_to_teach['ninth'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['ninth'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['ninth'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['ninth'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['eightth'] = parseString(
                                      !parseBool(class_to_teach['eightth']));
                                });
                              },
                              child: Text(
                                'الثامن',
                                style: TextStyle(
                                  color: (class_to_teach['eightth'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['eightth'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['eightth'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['eightth'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['seventh'] = parseString(
                                      !parseBool(class_to_teach['seventh']));
                                });
                              },
                              child: Text(
                                'السابع',
                                style: TextStyle(
                                  color: (class_to_teach['seventh'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['seventh'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['seventh'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['seventh'] == "true")
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
                                  class_to_teach['twelfth'] = parseString(
                                      !parseBool(class_to_teach['twelfth']));
                                });
                              },
                              child: Text(
                                'البكالوريا',
                                style: TextStyle(
                                  color: (class_to_teach['twelfth'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['twelfth'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['twelfth'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['twelfth'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['eleventh'] = parseString(
                                      !parseBool(class_to_teach['eleventh']));
                                });
                              },
                              child: Text(
                                'الحادي عشر',
                                style: TextStyle(
                                  color: (class_to_teach['eleventh'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color:
                                        (class_to_teach['eleventh'] == "true")
                                            ? Color.fromRGBO(226, 247, 255, 0)
                                            : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['eleventh'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['eleventh'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  class_to_teach['tenth'] = parseString(
                                      !parseBool(class_to_teach['tenth']));
                                });
                              },
                              child: Text(
                                'العاشر',
                                style: TextStyle(
                                  color: (class_to_teach['tenth'] == "true")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (class_to_teach['tenth'] == "true")
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor:
                                      (class_to_teach['tenth'] == "true")
                                          ? kColor5
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor:
                                      (class_to_teach['tenth'] == "true")
                                          ? Colors.grey
                                          : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                          ]),
                    ],
                  ),

                  SizedBox(height: size.height * 0.02),

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
            ],
          ),
        ],
      ),
    ));
  }
}
