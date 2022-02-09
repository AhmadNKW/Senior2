import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Account/account.dart';
import 'package:flutter_auth/Screens/S_04%20Student_Material/student_material_body.dart';
import 'package:flutter_auth/Screens/reservation/reservation.dart';

class StudentMaterialScreen extends StatefulWidget {
  @override
  _StudentMaterialScreenState createState() => _StudentMaterialScreenState();
}

class _StudentMaterialScreenState extends State<StudentMaterialScreen> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'الحجوزات  ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'الحساب    ',
            ),
          ],
          currentIndex: selectedIndex,
        ),
      ),
      children: <Widget>[
        StudentMaterialBody(),
        SReservation(),
        StudentAccount(),
      ],
      onItemTap: (index) {
        _onItemTapped(index);
      },
    );
  }
}
