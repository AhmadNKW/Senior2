//body

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/t_card.dart';
import 'package:flutter_auth/Screens/S_06%20Searched_Teacher_Profile/searched_teacher_profile_screen.dart';
import 'package:flutter_auth/constants.dart';

class TeacherListBody extends StatefulWidget {
  @override
  State<TeacherListBody> createState() => _TeacherListBodyState();
}

String dropdownValue = "الأعلى تقييم";

class _TeacherListBodyState extends State<TeacherListBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: BoxDecoration(
                  color: kColor5,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down_rounded),
                  iconEnabledColor: kColor6, // elevation: 8,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                  elevation: 2,
                  alignment: AlignmentDirectional.center,
                  borderRadius: BorderRadius.circular(12),
                  dropdownColor: kColor5,
                  isDense: true,
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                      if (newValue == "الأعلى تقييم") {
                        TeacherList.sort(
                            (a, b) => b.rating.compareTo(a.rating));
                      } else if (newValue == "الأقل تكلفة") {
                        TeacherList.sort((a, b) => a.cost.compareTo(b.cost));
                      } else {
                        TeacherList.sort((a, b) => b.cost.compareTo(a.cost));
                      }
                    });
                  },
                  items: <String>["الأعلى تقييم", "الأقل تكلفة", "الأعلى تكلفة"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
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
            height: 610,
            child: ListView.builder(
              itemCount: TeacherList.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 1), //editable
                child: Card(
                  shadowColor: Colors.transparent,
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
                          title: TeacherItemCard(tCard: TeacherList[index]),
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