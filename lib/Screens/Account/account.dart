// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/01%20Welcome/Welcome_screen.dart';
import 'package:flutter_auth/Screens/S_03%20Student_Signup/student_signup_screen.dart';
import 'package:flutter_auth/constants.dart';

int profileToggle = 2;

class StudentAccount extends StatefulWidget {
  const StudentAccount({Key key}) : super(key: key);

  @override
  State<StudentAccount> createState() => _StudentAccountState();
}

class _StudentAccountState extends State<StudentAccount> {
  String title = "تعديل الملعلومات الشخصية";
  String FirstPage = "تعديل الملعلومات الشخصية";
  String SecondPage = "تسجيل الخروج ";

  String doubleStar(double x) {
    if (x - x.toInt() >= 0.5)
      return "assets/images/half.png";
    else if (x - x.toInt() < 0.5)
      return "assets/images/empty.png";
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor5,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white, size: 25), //change your color here
        backgroundColor: kColor4.withOpacity(0),
        elevation: 0,
        toolbarOpacity: 1,
        centerTitle: true,
        automaticallyImplyLeading: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  FirstPage,
                  style: TextStyle(fontSize: 15),
                ),
                value: FirstPage,
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      SecondPage,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                value: SecondPage,
              ),
            ],
            onSelected: (String newValue) {
              setState(() {
                if (newValue == FirstPage) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StudentSignupScreen();
                      },
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomeScreen();
                      },
                    ),
                  );
                }
              });
            },
          ),
        ],
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 340, top: 15),
        //   child: action(
        //     onTap: () {},
        //     child: Icon(
        //       Icons.more_vert, // add custom icons also
        //     ),
        //   ),
        // ),

        title: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "معلومات الطالب  ",
              style: TextStyle(color: kColor3, fontSize: 22),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 280,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [kColor5, kColor6],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 70),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: kColor3,
                          ),
                          child: SizedBox(
                              height: 120,
                              child: Image.asset("assets/images/boss2.png")),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "أحمد نقاوة ",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 514,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      itemCount: 1,
                      itemBuilder: (context, index) => Card(
                        shadowColor: Colors.transparent,
                        borderOnForeground: false,
                        semanticContainer: false,
                        margin: EdgeInsets.only(bottom: 0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "رقم الهاتف  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                              color: kColor6),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "0954123458  ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kColor5,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 340,
                                      color: kColor4,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "الجنس  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                              color: kColor6),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "ذكر  ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kColor5,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 340,
                                      color: kColor4,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "عنوان السكن    ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                              color: kColor6),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "البرامكة  ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kColor5,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 340,
                                      color: kColor4,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "فرع الدراسة",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                              color: kColor6),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "علمي    ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kColor5,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 340,
                                      color: kColor4,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "الدرجة التعليمية  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                              color: kColor6),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "بكالوريا  ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kColor5,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 340,
                                      color: kColor4,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "معلومات عني     ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                              color: kColor6),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "لاعب 🏓 إحترافي     ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kColor5,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              height: 20,
                              thickness: 2,
                              color: kColor4,
                              indent: 20,
                              endIndent: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
