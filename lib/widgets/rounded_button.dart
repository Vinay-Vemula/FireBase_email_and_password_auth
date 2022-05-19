import 'package:email_and_password_auth_using_firebase/constants/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String imagesrc;
  final VoidCallback press;
  // ignore: use_key_in_widget_constructors
  const RoundedButton({Key? key, required this.press, required this.imagesrc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.only(
              top: appPadding / 4, bottom: appPadding / 8),
          child: Container(
            padding: const EdgeInsets.all(appPadding / 4),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      lightPrimary,
                      darkPrimary,
                    ]),
                boxShadow: [
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
            child: Image.asset(imagesrc),
          ),
        ));
  }
}
