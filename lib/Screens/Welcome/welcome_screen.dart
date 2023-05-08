import 'package:club_management/Screens/Login/login_profile_select.dart';
import 'package:club_management/Screens/SignUp/profile_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Login/login_screen.dart';
import '../Onboarding/onboarding_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
          isDarkMode ? Color(0xff272727) : Color.fromARGB(255, 255, 255, 255),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: const AssetImage("assets/images/welcome.png"),
                height: height * 0.4),
            Column(
              children: [
                Text("Manage Club Activities",
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center),
                Text("Lets revive the college culture of IIT!!",
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const LoginProfileSelect()),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: Color(0xff272727),
                        side: BorderSide(color: Color(0xff272727)),
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    child: Text("Login".toUpperCase()),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const OnBoardingScreen()),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(),
                        foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: Color(0xff272727),
                        side: BorderSide(color: Color(0xff272727)),
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    child: Text("Signup".toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
