import 'package:club_management/Screens/Home_Student.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SignUpFormStudentWidget extends StatefulWidget {
  const SignUpFormStudentWidget({Key? key}) : super(key: key);

  @override
  State<SignUpFormStudentWidget> createState() => _SignUpFormStudentWidgetState();
}

class _SignUpFormStudentWidgetState extends State<SignUpFormStudentWidget> {
  TextEditingController _emailtextcontroller = TextEditingController();
  TextEditingController _passwordtextcontroller = TextEditingController();
  TextEditingController _fullname = TextEditingController();
  TextEditingController _contact = TextEditingController();
  bool pos=true;
  bool error=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50 - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _fullname,
              decoration: const InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _emailtextcontroller,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  label: Text("Email id"),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _contact,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  label: Text("Phone Number"), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _passwordtextcontroller,
              obscureText: true,
              decoration: const InputDecoration(
                  label: Text("Password"), prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  print("submit Button Pressed");
                  if(_fullname.text.isEmpty || _emailtextcontroller.text.isEmpty || _contact.text.isEmpty
                      || _passwordtextcontroller.text.isEmpty){
                    pos=false;
                  }else pos= true;
                  if (pos){
                    setState(() {
                      error=false;
                    });
                  }
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailtextcontroller.text,
                      password:_passwordtextcontroller.text ).then((value) {
                    print('Created new account');
                    FirebaseFirestore.instance.collection('students')
                        .doc(FirebaseAuth.instance.currentUser?.uid)
                        .set({})
                        .then((value) => print(
                        'Created user ${FirebaseAuth.instance.currentUser?.uid}'))
                        .catchError((error)=>print(error));
                    print("Created new account again");
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                  await FirebaseFirestore.instance
                      .collection('students')
                      .doc(FirebaseAuth.instance.currentUser?.uid)
                      .update({
                    "Name": _fullname.text,
                    "Email": _emailtextcontroller.text,
                    "Contact_no": _contact.text,
                  }).then((value) {
                    print("Student data added");
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeStudent()));
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
