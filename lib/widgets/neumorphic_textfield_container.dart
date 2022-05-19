import 'package:email_and_password_auth_using_firebase/constants/constants.dart';
import 'package:flutter/material.dart';

class NeumorphicTextfieldContainer extends StatelessWidget {
  final Widget child;

  const NeumorphicTextfieldContainer({Key? key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: appPadding / 3),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [
                lightPrimary,
                darkPrimary,
              ]),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                offset: Offset(-2, -2),
                spreadRadius: 1,
                blurRadius: 4,
                color: darkShadow),
            BoxShadow(
                offset: Offset(2, 2),
                spreadRadius: 1,
                blurRadius: 4,
                color: lightShadow)
          ]),
      child: child,
    );
  }
}
