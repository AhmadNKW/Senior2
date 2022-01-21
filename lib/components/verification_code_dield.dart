import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class VerificationCodeField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const VerificationCodeField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        style: TextStyle(fontSize: 20.0, color: Colors.red[900]),
        keyboardType: TextInputType.number,
        maxLength: 4,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
