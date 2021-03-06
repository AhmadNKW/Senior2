// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher.dart';
import 'package:flutter_auth/Screens/S_06%20Searched_Teacher_Profile/rating_card.dart';
import 'package:flutter_auth/Screens/S_07%20Searched_Teacher_Calender/searched_teacher_calender_screen.dart';
import 'package:flutter_auth/constants.dart';

int profileToggle = 2;

class SearchedTeacherProfileScreen extends StatefulWidget {
  const SearchedTeacherProfileScreen({Key key, this.t1}) : super(key: key);
  final Teacher t1;

  @override
  State<SearchedTeacherProfileScreen> createState() =>
      _SearchedTeacherProfileScreenState();
}

class _SearchedTeacherProfileScreenState
    extends State<SearchedTeacherProfileScreen> {
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
                                  "??????????????????  ",
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
                                  "??????????????????  ",
                                  style: TextStyle(
                                      color: kColor6,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      profileToggle == 1
                          ? Center(
                              child: Container(
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
                                    "?????????? ????????????  ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
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
                                  "?????????? ????????????  ",
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
                        height: 355,
                        padding: EdgeInsets.only(bottom: 70),
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          itemCount: 1,
                          itemBuilder: (context, index) => Card(
                            shadowColor: Colors.transparent,
                            borderOnForeground: false,
                            semanticContainer: false,
                            margin: EdgeInsets.all(0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Container(
                                    padding:
                                        EdgeInsets.only(top: 25, bottom: 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "?????? ????????????",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 18,
                                                  color: kColor6),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              widget.t1.cost.toString() +
                                                  " S.P  ",
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
                                              "???????????? ???????? ????????????",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 18,
                                                  color: kColor6),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "?????????????????? - ???????????????? - ????????????????   ",
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
                                              "???????????? ?????????????? ???????????? ???????? ??????????",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 18,
                                                  color: kColor6),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "???????????? - ???????????? ?????? - ????????????????????   ",
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
                                              "?????? ???????????? ???????? ??????????   ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 18,
                                                  color: kColor6),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "?????? - ????????   ",
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
                                              "???????????? ???????? ???????? ??????  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 18,
                                                  color: kColor6),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "?????? ???????????? - ?????? ????????????     ",
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
                                              "?????????????? ???? ????????????       ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 18,
                                                  color: kColor6),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "???????? ???? ?????????????? 10 ??????????    \n ???????? ???? ?????????? ?????????????? \n ?????? ???????????????? ???? ??????????????",
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
                                  title: RatingItemCard(
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
        width: 150,
        height: 50,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SearchedTeacherCalender();
                },
              ),
            );
          },
          label: const Text(
            '???????? ????????????  ',
            style: TextStyle(fontSize: 14),
          ),
          icon: const Icon(Icons.add_circle_outline),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }
}
