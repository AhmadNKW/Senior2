import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/reservation/reservation_list.dart';
import 'package:flutter_auth/components/welcome_background.dart';
import 'package:flutter_auth/constants.dart';

class SReservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "الحجوزات  ",
            style: TextStyle(color: kColor6, fontSize: 22),
          ),
        ),
        iconTheme: IconThemeData(
            color: Colors.white, size: 25), //change your color here
        backgroundColor: kColor6.withOpacity(0.0),
        elevation: 0,
        toolbarOpacity: 1,
        centerTitle: true,
        // automaticallyImplyLeading: true,
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ReservationList()],
          ),
        ),
      ),
    );
  }
}
