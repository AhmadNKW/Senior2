//tCard looks like

// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher.dart';

class TeacherItemCard2 extends StatefulWidget {
  const TeacherItemCard2({
    Key key,
    this.tCard2,
  }) : super(key: key);

  final Teacher tCard2;

  @override
  State<TeacherItemCard2> createState() => _TeacherItemCard2State();
}

class _TeacherItemCard2State extends State<TeacherItemCard2> {
  String doubleStar(double x) {
    if (x - x.toInt() >= 0.5)
      return "assets/images/half.png";
    else if (x - x.toInt() < 0.5)
      return "assets/images/empty.png";
    else
      return null;
  }

  int x;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "رياضيات",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 70)),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.tCard2.name,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                      maxLines: 2,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    (widget.tCard2.rating.toInt() == 5)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                                child: Image.asset("assets/images/star.png"),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.5)),
                              SizedBox(
                                width: 20,
                                child: Image.asset("assets/images/star.png"),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.5)),
                              SizedBox(
                                width: 20,
                                child: Image.asset("assets/images/star.png"),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.5)),
                              SizedBox(
                                width: 20,
                                child: Image.asset("assets/images/star.png"),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.5)),
                              SizedBox(
                                width: 20,
                                child: Image.asset("assets/images/star.png"),
                              ),
                            ],
                          )
                        : (widget.tCard2.rating.toInt() == 4)
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                    child: Image.asset(
                                        doubleStar(widget.tCard2.rating)),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.5)),
                                  SizedBox(
                                    width: 20,
                                    child:
                                        Image.asset("assets/images/star.png"),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.5)),
                                  SizedBox(
                                    width: 20,
                                    child:
                                        Image.asset("assets/images/star.png"),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.5)),
                                  SizedBox(
                                    width: 20,
                                    child:
                                        Image.asset("assets/images/star.png"),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.5)),
                                  SizedBox(
                                    width: 20,
                                    child:
                                        Image.asset("assets/images/star.png"),
                                  ),
                                ],
                              )
                            : (widget.tCard2.rating.toInt() == 3)
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        child: Image.asset(
                                            "assets/images/empty.png"),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.5)),
                                      SizedBox(
                                        width: 20,
                                        child: Image.asset(
                                            doubleStar(widget.tCard2.rating)),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.5)),
                                      SizedBox(
                                        width: 20,
                                        child: Image.asset(
                                            "assets/images/star.png"),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.5)),
                                      SizedBox(
                                        width: 20,
                                        child: Image.asset(
                                            "assets/images/star.png"),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.5)),
                                      SizedBox(
                                        width: 20,
                                        child: Image.asset(
                                            "assets/images/star.png"),
                                      ),
                                    ],
                                  )
                                : (widget.tCard2.rating.toInt() == 2)
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
                                                  horizontal: 0.5)),
                                          SizedBox(
                                            width: 20,
                                            child: Image.asset(
                                                "assets/images/empty.png"),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0.5)),
                                          SizedBox(
                                            width: 20,
                                            child: Image.asset(doubleStar(
                                                widget.tCard2.rating)),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0.5)),
                                          SizedBox(
                                            width: 20,
                                            child: Image.asset(
                                                "assets/images/star.png"),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0.5)),
                                          SizedBox(
                                            width: 20,
                                            child: Image.asset(
                                                "assets/images/star.png"),
                                          ),
                                        ],
                                      )
                                    : (widget.tCard2.rating.toInt() == 1)
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
                                                      horizontal: 0.5)),
                                              SizedBox(
                                                width: 20,
                                                child: Image.asset(
                                                    "assets/images/empty.png"),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 0.5)),
                                              SizedBox(
                                                width: 20,
                                                child: Image.asset(
                                                    "assets/images/empty.png"),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 0.5)),
                                              SizedBox(
                                                width: 20,
                                                child: Image.asset(doubleStar(
                                                    widget.tCard2.rating)),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 0.5)),
                                              SizedBox(
                                                width: 20,
                                                child: Image.asset(
                                                    "assets/images/star.png"),
                                              ),
                                            ],
                                          )
                                        : (widget.tCard2.rating.toInt() == 0)
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
                                                              horizontal: 0.5)),
                                                  SizedBox(
                                                    width: 20,
                                                    child: Image.asset(
                                                        "assets/images/empty.png"),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 0.5)),
                                                  SizedBox(
                                                    width: 20,
                                                    child: Image.asset(
                                                        "assets/images/empty.png"),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 0.5)),
                                                  SizedBox(
                                                    width: 20,
                                                    child: Image.asset(
                                                        "assets/images/empty.png"),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 0.5)),
                                                  SizedBox(
                                                    width: 20,
                                                    child: Image.asset(
                                                        "assets/images/empty.png"),
                                                  ),
                                                ],
                                              )
                                            : Row(),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Text(
                      "أستاذ أكثر من رائع",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                      maxLines: 2,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
