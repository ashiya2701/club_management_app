import 'package:club_management/Screens/SignUp/signup_footer_widget.dart';
import 'package:club_management/Screens/SignUp/signup_form.dart';
import 'package:flutter/material.dart';

import 'form_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                FormHeaderWidget(
                  image: "assets/images/bg.png",
                  title: "Get onboard",
                  subTitle: "Create your profile to get started with club",
                  imageHeight: 0.15,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
