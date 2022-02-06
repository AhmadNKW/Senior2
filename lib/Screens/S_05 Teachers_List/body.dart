//body

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/cart.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/cart_item_cart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 0),
              color: Colors.grey.withOpacity(0.8),
            ),
          ],
        ),
        height: 735,
        child: ListView.builder(
          itemCount: teachersList.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 1), //editable
            child: Dismissible(
              key: Key(teachersList[index].teacher.id.toString()),
              // key: Key("Ahmad"),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg"),
                  ],
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  teachersList.removeAt(index);
                });
              },
              child: CartItemCard(cart: teachersList[index]),
            ),
          ),
        ),
      ),
    );
  }
}
