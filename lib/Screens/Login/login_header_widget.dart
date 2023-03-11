import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage("assets/images/bg.png"),
            height: size.height * 0.22),
        Text("Welcome Back", style: Theme.of(context).textTheme.headline3, ),
        Text("Lets hone your soft skills", style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}