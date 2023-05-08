import 'package:club_management/Screens/Login/login_footer_widget.dart';
import 'package:club_management/Screens/Login/login_form_widget.dart';
import 'package:club_management/Screens/Login/login_header_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LoginScreenStudent extends StatefulWidget {
  const LoginScreenStudent({super.key});

  @override
  State<LoginScreenStudent> createState() => _LoginScreenStudent();
}

class _LoginScreenStudent extends State<LoginScreenStudent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
