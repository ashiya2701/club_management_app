import 'package:club_management/Screens/SignUp/signup_footer_widget.dart';
import 'package:club_management/Screens/SignUp/signup_form.dart';
import 'package:club_management/Screens/SignUp/signup_screen.dart';
import 'package:club_management/Screens/SignUp/signup_student.dart';
import 'package:flutter/material.dart';

import '../Home_Club.dart';
import 'form_header_widget.dart';

class ProfileSelect extends StatefulWidget {
  const ProfileSelect({super.key});

  @override
  State<ProfileSelect> createState() => _ProfileSelectState();
}

class _ProfileSelectState extends State<ProfileSelect> {
  Widget _buildButton(String x) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        backgroundColor: Colors.black,
        // foregroundColor: Colors.blueGrey,
      ),
      child: Text(
        x,
        style: const TextStyle(color: Colors.white, fontFamily: 'Poppins'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                FormHeaderWidget(
                  image: "assets/images/bg.png",
                  title: "Get onboard",
                  subTitle: "Create your profile to get started with club",
                  imageHeight: 0.15,
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 300, // set the width of the button
                  height: 50, // set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreenStudent()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: Color(0xff173d45),
                        side: BorderSide(color: Color(0xff272727)),
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    child: Text("Student".toUpperCase()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 300, // set the width of the button
                  height: 50, // set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: Color(0xff173d45),
                        side: BorderSide(color: Color(0xff272727)),
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    child: Text("Club".toUpperCase()),
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
