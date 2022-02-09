//AppBar

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/teacher_list_body.dart';
import 'package:flutter_auth/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: BuildAppBar(context),
      ),
      body: TeacherListBody(),
    );
  }

  AppBar BuildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black), //change your color here
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      toolbarOpacity: 1,
      centerTitle: true,
      title: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            "نتائج البحث",
            style: TextStyle(color: kColor6),
          ),
          SizedBox(height: 2),
          Text("${TeacherList.length} Teachers",
              style: TextStyle(color: kColor5, fontSize: 11)),
        ],
      ),
    );
  }
}
