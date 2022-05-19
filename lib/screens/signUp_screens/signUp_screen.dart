// ignore_for_file: non_constant_identifier_names

import 'package:email_and_password_auth_using_firebase/constants/constants.dart';
import 'package:email_and_password_auth_using_firebase/screens/signIn_screen/signIn_screeen.dart';
import 'package:email_and_password_auth_using_firebase/widgets/account_check.dart';
import 'package:email_and_password_auth_using_firebase/widgets/rectangular_button.dart';
import 'package:email_and_password_auth_using_firebase/widgets/rectangular_input_field.dart';
import 'package:email_and_password_auth_using_firebase/widgets/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signUp() async {
    var response = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
    if (response != null) {
      Get.to(() => SignInScreen());
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _mobileNumberController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              lightPrimary,
              darkPrimary,
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _head_text(context),
              const SizedBox(
                height: 2,
              ),
              _credential_container(context),
              _social_icons(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _head_text(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: appPadding, vertical: appPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.1),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const Text(
            "Vinay Vemula",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _credential_container(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 1,
          ),
          RectangularInputField(
            hintText: "User Name",
            icon: Icons.person,
            obscureText: false,
            controller: _usernameController,
          ),
          RectangularInputField(
            hintText: "Email Id",
            icon: Icons.email,
            obscureText: false,
            controller: _emailController,
          ),
          RectangularInputField(
            hintText: "Mobile Number",
            icon: Icons.phone,
            obscureText: false,
            controller: _mobileNumberController,
          ),
          RectangularInputField(
            hintText: "Password",
            icon: Icons.lock,
            obscureText: false,
            controller: _passwordController,
          ),
          SizedBox(
            height: 2,
          ),
          RectangularButton(press: signUp, text: "Sign Up")
        ],
      ),
    );
  }

  Widget _social_icons(BuildContext context) {
    return Column(
      children: [
        const Center(
            child: Text(
          "Or",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedButton(
                  press: () {},
                  imagesrc: 'assets/images/social_media_logos/google.png'),
              RoundedButton(
                  press: () {},
                  imagesrc: 'assets/images/social_media_logos/facebook.png'),
              RoundedButton(
                  press: () {},
                  imagesrc: 'assets/images/social_media_logos/twitter.png'),
            ],
          ),
        ),
        const SizedBox(
          height: appPadding,
        ),
        AccountCheck(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SignInScreen();
              }));
            }),
      ],
    );
  }
}
