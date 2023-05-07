import 'package:club_management/Screens/SignUp/profile_select.dart';
import 'package:flutter/material.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
                image: AssetImage("assets/images/glogo.png"), width: 20.0),
            onPressed: () {},
            label: const Text(
              "Sign in with Google",
              style: TextStyle(color: Color(0xff173d45)),
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileSelect()));
          },
          child: Text.rich(
            TextSpan(
                text: "Don't have an account? ",
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(text: "Signup", style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}
