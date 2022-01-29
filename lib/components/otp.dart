import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class OTP extends StatelessWidget {
  const OTP({
    Key key,
    @required this.first,
    @required this.last,
  }) : super(key: key);

  final bool first;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: kColor5),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
