import 'package:flutter/material.dart';
import 'package:club_management/Screens/calendar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'Home_Student.dart';

class RecordAtd extends StatefulWidget {
  const RecordAtd({super.key});

  @override
  State<RecordAtd> createState() => _RecordAtdState();
}

class _RecordAtdState extends State<RecordAtd> {
  @override

    Widget _buildbtn(BuildContext context, String x) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeStudent()),
        );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 5.0,
          padding: EdgeInsets.all(15.0),
          backgroundColor: Color(0xFF000102),
          foregroundColor: Colors.blueGrey,
        ),
        child: Text(
          x,
          style: const TextStyle(color: Colors.white, fontFamily: 'Poppins'),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: const Text(
            'Attendance',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              // fontSize: 26.0,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [  
              SizedBox(height: 100),
              Text('You were marked Present',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 13, 125, 16),
              fontFamily: 'Arial',
              fontStyle: FontStyle.italic,
              ),
              ),
              SizedBox(height: 100),
              Center(
                child: Image.asset(
                  'assets/images/greentick.png',
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildbtn(context, 'Go to home page'),
                ],
              ),
             
            ])));
}
}