import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class RoundedButton2 extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor, bC;
  final double x, y, fz;
  const RoundedButton2(
      {Key key,
      this.text,
      this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.black,
      this.x,
      this.y,
      this.fz = 12,
      this.bC = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: x,
      width: y,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            side: BorderSide(width: 0.5, color: kColor5),
            backgroundColor: bC,
            primary: kColor5),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: kColor5, fontSize: fz),
        ),
      ),
    );
  }
}
