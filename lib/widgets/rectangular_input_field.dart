import 'package:email_and_password_auth_using_firebase/constants/constants.dart';
import 'package:email_and_password_auth_using_firebase/widgets/neumorphic_textfield_container.dart';
import 'package:flutter/material.dart';

class RectangularInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final controller;
  // ignore: use_key_in_widget_constructors
  const RectangularInputField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return NeumorphicTextfieldContainer(
      child: TextField(
        controller: controller,
        cursorColor: black,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            helperStyle: TextStyle(
              color: black.withOpacity(0.7),
            ),
            prefixIcon: Icon(
              icon,
              color: black.withOpacity(0.7),
              size: 20,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
