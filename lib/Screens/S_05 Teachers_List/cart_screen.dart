//AppBar

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/body.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/cart.dart';
import 'package:flutter_auth/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: BuildAppBar(context),
      ),
      body: Body(),
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
          Text(
            "نتائج البحث",
            style: TextStyle(color: kColor6),
          ),
          Text("${teachersList.length} items",
              style: Theme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}
