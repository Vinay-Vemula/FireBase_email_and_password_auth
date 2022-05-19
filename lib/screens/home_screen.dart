import 'package:email_and_password_auth_using_firebase/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Claymorphisim extends StatefulWidget {
  const Claymorphisim({super.key});

  @override
  State<Claymorphisim> createState() => _ClaymorphisimState();
}

class _ClaymorphisimState extends State<Claymorphisim> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: GestureDetector(
          onTap: (() => FirebaseAuth.instance.signOut()),
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(4, 4),
                      spreadRadius: -12,
                      color: darkShadow),
                  BoxShadow(
                      offset: Offset(-4, -4),
                      spreadRadius: -12,
                      color: darkShadow),
                  BoxShadow(
                      offset: Offset(4, -4),
                      spreadRadius: -12,
                      color: darkShadow),
                  BoxShadow(
                      offset: Offset(-4, 4),
                      spreadRadius: -12,
                      color: darkShadow),
                  BoxShadow(
                      offset: Offset(1, -1),
                      spreadRadius: -12,
                      blurRadius: 12,
                      color: Colors.white),
                ]),
            child: Center(
                child: Icon(
              Icons.apple,
              color: Colors.grey,
              size: 100,
            )),
          ),
        ),
      ),
    );
  }
}
