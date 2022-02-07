// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/01%20Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher.dart';
import 'package:flutter_auth/Screens/S_06%20Teacher_Profile/t_card2.dart';
import 'package:flutter_auth/constants.dart';

int profileToggle = 2;

class TeacherProfileScreen2 extends StatefulWidget {
  const TeacherProfileScreen2({Key key, this.t1}) : super(key: key);
  final Teacher t1;

  @override
  State<TeacherProfileScreen2> createState() => _TeacherProfileScreen2State();
}

class _TeacherProfileScreen2State extends State<TeacherProfileScreen2> {
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
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: 1000,
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
                            height: 120, child: Image.asset(widget.t1.images)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.t1.name,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Text(
                        widget.t1.edu_degree,
                        style: TextStyle(fontSize: 15, color: kColor3),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      (widget.t1.rating.toInt() == 5)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  child: Image.asset("assets/images/star.png"),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1)),
                                SizedBox(
                                  width: 20,
                                  child: Image.asset("assets/images/star.png"),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1)),
                                SizedBox(
                                  width: 20,
                                  child: Image.asset("assets/images/star.png"),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1)),
                                SizedBox(
                                  width: 20,
                                  child: Image.asset("assets/images/star.png"),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1)),
                                SizedBox(
                                  width: 20,
                                  child: Image.asset("assets/images/star.png"),
                                ),
                              ],
                            )
                          : (widget.t1.rating.toInt() == 4)
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      child: Image.asset(
                                          doubleStar(widget.t1.rating)),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1)),
                                    SizedBox(
                                      width: 20,
                                      child:
                                          Image.asset("assets/images/star.png"),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1)),
                                    SizedBox(
                                      width: 20,
                                      child:
                                          Image.asset("assets/images/star.png"),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1)),
                                    SizedBox(
                                      width: 20,
                                      child:
                                          Image.asset("assets/images/star.png"),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1)),
                                    SizedBox(
                                      width: 20,
                                      child:
                                          Image.asset("assets/images/star.png"),
                                    ),
                                  ],
                                )
                              : (widget.t1.rating.toInt() == 3)
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          child: Image.asset(
                                              "assets/images/empty.png"),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1)),
                                        SizedBox(
                                          width: 20,
                                          child: Image.asset(
                                              doubleStar(widget.t1.rating)),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1)),
                                        SizedBox(
                                          width: 20,
                                          child: Image.asset(
                                              "assets/images/star.png"),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1)),
                                        SizedBox(
                                          width: 20,
                                          child: Image.asset(
                                              "assets/images/star.png"),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1)),
                                        SizedBox(
                                          width: 20,
                                          child: Image.asset(
                                              "assets/images/star.png"),
                                        ),
                                      ],
                                    )
                                  : (widget.t1.rating.toInt() == 2)
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 20,
                                              child: Image.asset(
                                                  "assets/images/empty.png"),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 1)),
                                            SizedBox(
                                              width: 20,
                                              child: Image.asset(
                                                  "assets/images/empty.png"),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 1)),
                                            SizedBox(
                                              width: 20,
                                              child: Image.asset(
                                                  doubleStar(widget.t1.rating)),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 1)),
                                            SizedBox(
                                              width: 20,
                                              child: Image.asset(
                                                  "assets/images/star.png"),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 1)),
                                            SizedBox(
                                              width: 20,
                                              child: Image.asset(
                                                  "assets/images/star.png"),
                                            ),
                                          ],
                                        )
                                      : (widget.t1.rating.toInt() == 1)
                                          ? Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                  child: Image.asset(
                                                      "assets/images/empty.png"),
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 1)),
                                                SizedBox(
                                                  width: 20,
                                                  child: Image.asset(
                                                      "assets/images/empty.png"),
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 1)),
                                                SizedBox(
                                                  width: 20,
                                                  child: Image.asset(
                                                      "assets/images/empty.png"),
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 1)),
                                                SizedBox(
                                                  width: 20,
                                                  child: Image.asset(doubleStar(
                                                      widget.t1.rating)),
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 1)),
                                                SizedBox(
                                                  width: 20,
                                                  child: Image.asset(
                                                      "assets/images/star.png"),
                                                ),
                                              ],
                                            )
                                          : (widget.t1.rating.toInt() == 0)
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 20,
                                                      child: Image.asset(
                                                          "assets/images/empty.png"),
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 1)),
                                                    SizedBox(
                                                      width: 20,
                                                      child: Image.asset(
                                                          "assets/images/empty.png"),
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 1)),
                                                    SizedBox(
                                                      width: 20,
                                                      child: Image.asset(
                                                          "assets/images/empty.png"),
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 1)),
                                                    SizedBox(
                                                      width: 20,
                                                      child: Image.asset(
                                                          "assets/images/empty.png"),
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 1)),
                                                    SizedBox(
                                                      width: 20,
                                                      child: Image.asset(
                                                          "assets/images/empty.png"),
                                                    ),
                                                  ],
                                                )
                                              : Row(),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 500,
                  decoration: BoxDecoration(color: kColor3, boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(0, 0),
                      color: kColor6.withOpacity(0.6),
                    )
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 0)),
                      profileToggle == 2
                          ? Container(
                              decoration: BoxDecoration(
                                color: kColor6,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(0, 4),
                                    color: kColor6.withOpacity(0.2),
                                  ),
                                ],
                              ),
                              width: 125,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    profileToggle = 2;
                                  });
                                },
                                child: Text(
                                  "التقييمات  ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          : Container(
                              width: 125,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    profileToggle = 2;
                                  });
                                },
                                child: Text(
                                  "التقييمات  ",
                                  style: TextStyle(
                                      color: kColor6,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      profileToggle == 1
                          ? Container(
                              decoration: BoxDecoration(
                                color: kColor6,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(0, 4),
                                    color: kColor6.withOpacity(0.2),
                                  ),
                                ],
                              ),
                              width: 125,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    profileToggle = 1;
                                  });
                                },
                                child: Text(
                                  "الملف الشخصي  ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          : Container(
                              width: 125,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    profileToggle = 1;
                                  });
                                },
                                child: Text(
                                  "الملف الشخصي  ",
                                  style: TextStyle(
                                      color: kColor6,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 0)),
                    ],
                  ),
                ),
                profileToggle == 1
                    ? Container(
                        padding: EdgeInsets.only(top: 25, bottom: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "سعر الساعة",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: kColor6),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.t1.cost.toString() + " S.P  ",
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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "المواد التي يدرسها",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: kColor6),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "الرياضيات - الفيزياء - الكيمياء   ",
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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "الدرجة العلمية للطالب الذي يدرسه",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: kColor6),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "العاشر - الحادي عشر - البكالوريا   ",
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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "جنس الطالب الذي يدرسه   ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: kColor6),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "ذكر - أنثى   ",
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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "المكان الذي يدرس فيه  ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: kColor6),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "بيت الطالب - بيت المدرس     ",
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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "معلومات عن المدرس       ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: kColor6),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "خبرة في التدريس 10 سنوات    \n مدرس في مدرسة السعادة \n حسن المعاملة مع الأطفال",
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
                          ],
                        ),
                      )
                    : Container(
                        height: 408,
                        padding: EdgeInsets.only(bottom: 70),
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          itemCount: 4,
                          itemBuilder: (context, index) => Card(
                            shadowColor: Colors.transparent,
                            borderOnForeground: false,
                            semanticContainer: false,
                            margin: EdgeInsets.all(0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: TeacherItemCard2(
                                      tCard2: TeacherList[index]),
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
                      ),
              ],
            )),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(0, 4),
              color: Colors.grey.withOpacity(0.9),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [kColor5, kColor6],
            stops: [0.0, 1.0],
          ),
        ),
        width: 350,
        height: 55,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WelcomeScreen();
                },
              ),
            );
          },
          label: const Text(
            'إحجز المدرس',
            style: TextStyle(fontSize: 17),
          ),
          icon: const Icon(Icons.add_sharp),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }
}
