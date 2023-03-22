import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../OTP/otp_screen.dart';
import '../SignUp/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const SizedBox(height: 30 * 4),
                FormHeaderWidget(
                  image: "assets/images/forget.jpg",
                  title: "Forget Password".toUpperCase(),
                  subTitle: "Select one of the options given below to reset your passowrd",
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text("Email"),
                            hintText: "Email",
                            prefixIcon: Icon(Icons.mail_outline_rounded)),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                 Get.to(() => const OTPScreen());
                              },
                              child: const Text("Next"))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}