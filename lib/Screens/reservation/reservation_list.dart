//body

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher.dart';
import 'package:flutter_auth/Screens/S_06%20Searched_Teacher_Profile/searched_teacher_profile_screen.dart';
import 'package:flutter_auth/constants.dart';

class ReservationList extends StatefulWidget {
  @override
  State<ReservationList> createState() => _ReservationListState();
}

class _ReservationListState extends State<ReservationList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  offset: Offset(0, 0),
                  color: Colors.grey.withOpacity(0.8),
                ),
              ],
            ),
            height: 660,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 1), //editable
                child: Card(
                  shadowColor: Colors.transparent,
                  color: Colors.red.withOpacity(0),
                  borderOnForeground: false,
                  semanticContainer: false,
                  margin: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      InkWell(
                        splashColor: kColor5,
                        highlightColor: kColor4,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SearchedTeacherProfileScreen(
                                    t1: TeacherList[index]);
                              },
                            ),
                          );
                        },
                        child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                            title: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1000" + "\nلكل ساعة",
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Ahmad",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700),
                                              maxLines: 2,
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 1)),
                                            (1 == 5)
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assets/images/star.png"),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0.5)),
                                                      SizedBox(
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assets/images/star.png"),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0.5)),
                                                      SizedBox(
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assets/images/star.png"),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0.5)),
                                                      SizedBox(
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assets/images/star.png"),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0.5)),
                                                      SizedBox(
                                                        width: 20,
                                                        child: Image.asset(
                                                            "assets/images/star.png"),
                                                      ),
                                                    ],
                                                  )
                                                : (1 == 4)
                                                    ? Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 20,
                                                            child: Image.asset(
                                                                "assets/images/star.png"),
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          0.5)),
                                                          SizedBox(
                                                            width: 20,
                                                            child: Image.asset(
                                                                "assets/images/star.png"),
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          0.5)),
                                                          SizedBox(
                                                            width: 20,
                                                            child: Image.asset(
                                                                "assets/images/star.png"),
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          0.5)),
                                                          SizedBox(
                                                            width: 20,
                                                            child: Image.asset(
                                                                "assets/images/star.png"),
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          0.5)),
                                                          SizedBox(
                                                            width: 20,
                                                            child: Image.asset(
                                                                "assets/images/star.png"),
                                                          ),
                                                        ],
                                                      )
                                                    : (1 == 3)
                                                        ? Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                width: 20,
                                                                child: Image.asset(
                                                                    "assets/images/empty.png"),
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                              SizedBox(
                                                                width: 20,
                                                                child: Image.asset(
                                                                    "assets/images/star.png"),
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                              SizedBox(
                                                                width: 20,
                                                                child: Image.asset(
                                                                    "assets/images/star.png"),
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                              SizedBox(
                                                                width: 20,
                                                                child: Image.asset(
                                                                    "assets/images/star.png"),
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                              SizedBox(
                                                                width: 20,
                                                                child: Image.asset(
                                                                    "assets/images/star.png"),
                                                              ),
                                                            ],
                                                          )
                                                        : (1 == 2)
                                                            ? Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                    width: 20,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/empty.png"),
                                                                  ),
                                                                  Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                                  SizedBox(
                                                                    width: 20,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/empty.png"),
                                                                  ),
                                                                  Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                                  SizedBox(
                                                                    width: 20,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/star.png"),
                                                                  ),
                                                                  Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                                  SizedBox(
                                                                    width: 20,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/star.png"),
                                                                  ),
                                                                  Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0.5)),
                                                                  SizedBox(
                                                                    width: 20,
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/star.png"),
                                                                  ),
                                                                ],
                                                              )
                                                            : (1 == 1)
                                                                ? Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                        child: Image.asset(
                                                                            "assets/images/empty.png"),
                                                                      ),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.symmetric(horizontal: 0.5)),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                        child: Image.asset(
                                                                            "assets/images/empty.png"),
                                                                      ),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.symmetric(horizontal: 0.5)),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                        child: Image.asset(
                                                                            "assets/images/empty.png"),
                                                                      ),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.symmetric(horizontal: 0.5)),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                        child: Image.asset(
                                                                            "assets/images/star.png"),
                                                                      ),
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.symmetric(horizontal: 0.5)),
                                                                      SizedBox(
                                                                        width:
                                                                            20,
                                                                        child: Image.asset(
                                                                            "assets/images/star.png"),
                                                                      ),
                                                                    ],
                                                                  )
                                                                : (1 == 0)
                                                                    ? Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          SizedBox(
                                                                            width:
                                                                                20,
                                                                            child:
                                                                                Image.asset("assets/images/empty.png"),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.symmetric(horizontal: 0.5)),
                                                                          SizedBox(
                                                                            width:
                                                                                20,
                                                                            child:
                                                                                Image.asset("assets/images/empty.png"),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.symmetric(horizontal: 0.5)),
                                                                          SizedBox(
                                                                            width:
                                                                                20,
                                                                            child:
                                                                                Image.asset("assets/images/empty.png"),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.symmetric(horizontal: 0.5)),
                                                                          SizedBox(
                                                                            width:
                                                                                20,
                                                                            child:
                                                                                Image.asset("assets/images/empty.png"),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.symmetric(horizontal: 0.5)),
                                                                          SizedBox(
                                                                            width:
                                                                                20,
                                                                            child:
                                                                                Image.asset("assets/images/empty.png"),
                                                                          ),
                                                                        ],
                                                                      )
                                                                    : Row(),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 5)),
                                            Text(
                                              "بكالوريوس",
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
                                          child: Image.asset(
                                              "assets/images/boss2.png"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        // title: Container(
                        //   color: Colors.amberAccent,
                        //   height: 70,
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Row(
                        //         mainAxisAlignment: MainAxisAlignment.end,
                        //         children: [
                        //           Text(""),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // )),
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
          ),
        ],
      ),
    );
  }
}
// Dismissible(
//                   key: Key(TeacherList[index].id.toString()),
//                   // key: Key("Ahmad"),
//                   direction: DismissDirection.endToStart,
//                   background: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     decoration: BoxDecoration(
//                       color: Color(0xFFFFE6E6),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: Row(
//                       children: [
//                         Spacer(),
//                         SvgPicture.asset("assets/icons/Trash.svg"),
//                       ],
//                     ),
//                   ),
//                   onDismissed: (direction) {
//                     setState(() {
//                       TeacherList.removeAt(index);
//                       TeacherList.add(
//                         Teacher(
//                           id: 5,
//                           images: ["assets/images/boss2.png"],
//                           name: "hgxgfxchvjbkln",
//                           rating: 1.8,
//                           edu_degree: "بكالوريوس",
//                           cost: 5000,
//                         ),
//                       );
//                     });
//                   },
//                   child: CartItemCard(tCard: TeacherList[index]),
//                 ),
