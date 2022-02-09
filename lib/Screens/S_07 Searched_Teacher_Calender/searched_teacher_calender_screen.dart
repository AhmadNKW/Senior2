import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/cart_screen.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/Thursday.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/friday.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/monday.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/saterday.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/sunday.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/tuesday.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/wednesday.dart';
import 'package:flutter_auth/components/welcome_background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';

String day;

class SearchedTeacherCalender extends StatefulWidget {
  @override
  State<SearchedTeacherCalender> createState() =>
      _SearchedTeacherCalenderState();
}

@override
void initState() {}

class _SearchedTeacherCalenderState extends State<SearchedTeacherCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(children: [
            Container(
              width: 350,
              height: 743,
              padding: EdgeInsetsDirectional.all(20),
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
                Padding(padding: EdgeInsets.only(bottom: 10)),
                //إختر وقت الدرس
                Text(
                  "إختر وقت الدرس",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                                  day = "Tuesday";
                                });
                              },
                              child: Text(
                                'الثلاثاء',
                                style: TextStyle(
                                  color: (day == "Tuesday")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (day == "Tuesday")
                                        ? Colors.transparent
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (day == "Tuesday")
                                      ? kColor5
                                      : Colors.transparent,
                                  shadowColor: (day == "Tuesday")
                                      ? Colors.grey
                                      : Colors.transparent,
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  day = "Monday";
                                });
                              },
                              child: Text(
                                'الإثنين',
                                style: TextStyle(
                                  color: (day == "Monday")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (day == "Monday")
                                        ? Colors.transparent
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (day == "Monday")
                                      ? kColor5
                                      : Colors.transparent,
                                  shadowColor: (day == "Monday")
                                      ? Colors.grey
                                      : Colors.transparent,
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  day = "Sunday";
                                });
                              },
                              child: Text(
                                'الأحد',
                                style: TextStyle(
                                  color: (day == "Sunday")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (day == "Sunday")
                                        ? Colors.transparent
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (day == "Sunday")
                                      ? kColor5
                                      : Colors.transparent,
                                  shadowColor: (day == "Sunday")
                                      ? Colors.grey
                                      : Colors.transparent,
                                  elevation: 3),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  day = "Saterday";
                                });
                              },
                              child: Text(
                                'السبت',
                                style: TextStyle(
                                  color: (day == "Saterday")
                                      ? Colors.white
                                      : kPrimaryColor,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(
                                    color: (day == "Saterday")
                                        ? Colors.transparent
                                        : kPrimaryColor,
                                  ),
                                  backgroundColor: (day == "Saterday")
                                      ? kColor5
                                      : Colors.transparent,
                                  shadowColor: (day == "Saterday")
                                      ? Colors.grey
                                      : Colors.transparent,
                                  elevation: 3),
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                day = "Friday";
                              });
                            },
                            child: Text(
                              'الجمعة',
                              style: TextStyle(
                                color: (day == "Friday")
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (day == "Friday")
                                      ? Colors.transparent
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (day == "Friday")
                                    ? kColor5
                                    : Colors.transparent,
                                shadowColor: (day == "Friday")
                                    ? Colors.grey
                                    : Colors.transparent,
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                day = "Thursday";
                              });
                            },
                            child: Text(
                              'الخميس',
                              style: TextStyle(
                                color: (day == "Thursday")
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (day == "Thursday")
                                      ? Colors.transparent
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (day == "Thursday")
                                    ? kColor5
                                    : Colors.transparent,
                                shadowColor: (day == "Thursday")
                                    ? Colors.grey
                                    : Colors.transparent,
                                elevation: 3),
                          ),
                          Padding(padding: EdgeInsets.all(4)),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                day = "Wednesday";
                              });
                            },
                            child: Text(
                              'الأربعاء',
                              style: TextStyle(
                                color: (day == "Wednesday")
                                    ? Colors.white
                                    : kPrimaryColor,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                side: BorderSide(
                                  color: (day == "Wednesday")
                                      ? Colors.transparent
                                      : kPrimaryColor,
                                ),
                                backgroundColor: (day == "Wednesday")
                                    ? kColor5
                                    : Colors.transparent,
                                shadowColor: (day == "Wednesday")
                                    ? Colors.grey
                                    : Colors.transparent,
                                elevation: 3),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                day == "Tuesday"
                    ? Tuesday()
                    : day == "Monday"
                        ? Monday()
                        : day == "Sunday"
                            ? Sunday()
                            : day == "Saterday"
                                ? Saterday()
                                : day == "Friday"
                                    ? Friday()
                                    : day == "Thursday"
                                        ? Thursday()
                                        : Wednesday(),
                //التالي
                RoundedButton(
                  text: "حجز",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CartScreen();
                        },
                      ),
                    );
                  },
                ),
              ]),
            ),
          ]),
        ],
      )),
    );
  }
}
