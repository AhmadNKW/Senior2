import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class CustomRatio extends StatefulWidget {
  final String text;
  final int index;
  final Color color, textColor;
  static int value = -1;
  CustomRatio({
    Key key,
    this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.black,
    this.index,
  }) : super(key: key);

  @override
  State<CustomRatio> createState() => _CustomRatioState();
}

class _CustomRatioState extends State<CustomRatio> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          CustomRatio.value = widget.index;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color:
              (CustomRatio.value == widget.index) ? Colors.green : Colors.black,
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
            color: (CustomRatio.value == widget.index)
                ? Colors.green
                : Colors.black),
      ),
    );
  }
}
