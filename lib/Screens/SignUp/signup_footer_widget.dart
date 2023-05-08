import 'package:club_management/Screens/Login/login_profile_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Login/Club/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage("assets/images/glogo.png"),
              width: 20.0,
            ),
            label: Text(
              "Sign in with Google".toUpperCase(),
              style: TextStyle(color: Color(0xff173d45)),
            ),
          ),
        ),
        TextButton(
          onPressed: () => Get.to(() => const LoginProfileSelect()),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: "Already have an account? ",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(
                text: "Login".toUpperCase(),
                style: TextStyle(color: Colors.blue))
          ])),
        )
      ],
    );
  }
}
