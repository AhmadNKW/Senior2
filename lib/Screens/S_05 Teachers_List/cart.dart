//add teacher or number of teachers

import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/Screens/S_05%20Teachers_List/Product.dart';

class T_Cart {
  final Teacher teacher;

  T_Cart({@required this.teacher});
}

//Demo data for our cart
List<T_Cart> teachersList = [
  T_Cart(teacher: demoTeachers[0]),
  T_Cart(teacher: demoTeachers[1]),
  T_Cart(teacher: demoTeachers[2]),
  T_Cart(teacher: demoTeachers[3]),
];
