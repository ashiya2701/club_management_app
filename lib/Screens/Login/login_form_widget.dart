import 'package:club_management/Screens/Home_Club.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

import '../Forgot Password/forget_password_bottom.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _currentclub;
    TextEditingController _email = TextEditingController();
    TextEditingController _pass = TextEditingController();
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 50 - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Email Id",
                  hintText: "Email Id",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              controller: _pass,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Color(0xff173d45)),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                email: _email.text, password: _pass.text)
                    .then((value) {
                  FirebaseFirestore.instance
                      .collection('users')
                      .doc(FirebaseAuth.instance.currentUser?.uid)
                      .get()
                      .then((DocumentSnapshot doc) {
                    if (doc.exists) {
                      _currentclub = doc.data();
                    }
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeClub()));
                }).onError((error, stackTrace){
                  print("Error ${error.toString()}");
                });
                },
                  
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color(0xff173d45),
                    side: BorderSide(color: Color(0xff272727)),
                    padding: EdgeInsets.symmetric(vertical: 15)),
                child: Text("Login".toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
