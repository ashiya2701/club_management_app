import 'package:flutter/material.dart';

import '../Home_Club.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50 - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Email id"),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Phone Numer"), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Club Name"),
                  prefixIcon: Icon(Icons.home_mini_outlined)),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Password"), prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeClub()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color(0xff173d45),
                    side: BorderSide(color: Color(0xff272727)),
                    padding: EdgeInsets.symmetric(vertical: 15)),
                child: Text("Signup".toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
