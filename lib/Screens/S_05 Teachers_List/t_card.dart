//tCard looks like

// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher.dart';

class TeacherItemCard extends StatefulWidget {
  const TeacherItemCard({
    Key key,
    this.tCard,
  }) : super(key: key);

  final Teacher tCard;

  @override
  State<TeacherItemCard> createState() => _TeacherItemCardState();
}

class _TeacherItemCardState extends State<TeacherItemCard> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.tCard.cost.toString() + " S.P" + "\nلكل ساعة",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.tCard.name,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                      maxLines: 2,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    (widget.tCard.rating.toInt() == 5)
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
                        : (widget.tCard.rating.toInt() == 4)
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                    child: Image.asset(
                                        doubleStar(widget.tCard.rating)),
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
                            : (widget.tCard.rating.toInt() == 3)
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
                                            doubleStar(widget.tCard.rating)),
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
                                : (widget.tCard.rating.toInt() == 2)
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
                                                widget.tCard.rating)),
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
                                    : (widget.tCard.rating.toInt() == 1)
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
                                                    widget.tCard.rating)),
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
                                        : (widget.tCard.rating.toInt() == 0)
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
                      widget.tCard.edu_degree,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                      maxLines: 2,
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                  child: Image.asset(widget.tCard.images),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
