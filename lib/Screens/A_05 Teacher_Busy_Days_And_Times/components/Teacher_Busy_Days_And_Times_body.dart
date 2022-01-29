import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/02_1%20Signup/components/signup_background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

import '../Teacher_Busy_Days_And_Times_screen.dart';

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

class TeacherBusyDaysAndTimesBody extends StatefulWidget {
  @override
  State<TeacherBusyDaysAndTimesBody> createState() =>
      _TeacherBusyDaysAndTimesBodyState();
}

@override
void initState() {}

class _TeacherBusyDaysAndTimesBodyState
    extends State<TeacherBusyDaysAndTimesBody> {
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
                  "اختر الأيام والأوقات التي \n لا تستطيع التدريس بها رجاءً",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: size.height * 0.04),

                //الأيام
                Container(
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v1 = !v1;
                                });
                              },
                              child: Text(
                                'الثلاثاء',
                                style: TextStyle(
                                  color: (v1 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (v1 == true)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (v1 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v1 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v1 = !v1;
                                });
                              },
                              child: Text(
                                'الإثنين',
                                style: TextStyle(
                                  color: (v1 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (v1 == true)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (v1 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v1 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v2 = !v2;
                                });
                              },
                              child: Text(
                                'الأحد',
                                style: TextStyle(
                                  color: (v2 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (v2 == true)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (v2 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v2 == true)
                                      ? Colors.grey
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  v3 = !v3;
                                });
                              },
                              child: Text(
                                'السبت',
                                style: TextStyle(
                                  color: (v3 == true)
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (v3 == true)
                                        ? Color.fromRGBO(226, 247, 255, 0)
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (v3 == true)
                                      ? kColor5
                                      : Color.fromRGBO(226, 247, 255, 0),
                                  shadowColor: (v3 == true)
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
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              'الجمعة',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              'الخميس',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              'الأربعاء',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),

                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '7:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '7:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '8:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '8:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '9:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '9:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '10:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '10:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '11:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '11:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '12:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '12:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '13:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '13:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '14:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '14:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '15:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '15:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '16:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '16:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '17:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '17:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '18:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '18:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '19:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '19:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '20:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '20:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '21:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '21:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '22:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '22:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '23:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '23:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '24:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v3 = !v3;
                              });
                            },
                            child: Text(
                              '24:30',
                              style: TextStyle(
                                color:
                                    (v3 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v3 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v3 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v3 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '1:00',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v1 = !v1;
                              });
                            },
                            child: Text(
                              '1:30',
                              style: TextStyle(
                                color:
                                    (v1 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v1 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v1 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v1 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                v2 = !v2;
                              });
                            },
                            child: Text(
                              '2:00',
                              style: TextStyle(
                                color:
                                    (v2 == true) ? Colors.white : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (v2 == true)
                                      ? Color.fromRGBO(226, 247, 255, 0)
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (v2 == true)
                                    ? kColor5
                                    : Color.fromRGBO(226, 247, 255, 0),
                                shadowColor: (v2 == true)
                                    ? Colors.grey
                                    : Color.fromRGBO(226, 247, 255, 0),
                                elevation: 3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
