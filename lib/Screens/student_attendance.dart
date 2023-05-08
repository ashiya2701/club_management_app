import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class TrackStudentAttendance extends StatefulWidget {
  const TrackStudentAttendance({super.key});

  @override
  State<TrackStudentAttendance> createState() => _TrackStudentAttendanceState();
}

class _TrackStudentAttendanceState extends State<TrackStudentAttendance> {
  @override
    
  Widget _buildbtn(BuildContext context, String x) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: ElevatedButton(
        onPressed: () {
          
          //func
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
            'Mark Attendance',
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
              SizedBox(height: 50),
              Text('Make sure your Bluetooth and location are given permission to this app',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 30),
              Center(
                child: Image.asset(
                  'assets/images/student_atd.png',
                  height: 300,
                  width: 300,
                ),
              ),
              SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildbtn(context, 'Mark Attendance'),
                ],
              ),
            ])));
  }
}