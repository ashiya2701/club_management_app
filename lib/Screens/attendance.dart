import 'package:flutter/material.dart';
import 'package:club_management/Screens/attendance.dart';
import 'package:club_management/Screens/calendar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  DateTime date_now = DateTime.now();
  DateTime time_now = DateTime.now();

  Widget _buildmyCard(BuildContext context, String x, String y) {
    String formattedTime = DateFormat('h:mm a').format(time_now);
    String formattedDate = DateFormat('MMMM d, y').format(date_now);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Card(
          elevation: 5.0, // set the card elevation
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(25.0), // set the rounded corner radius
          ),
          child: Container(
            width: 500.0, // set the card width
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000102),
                  Color(0xFF464B55)
                ], // set the gradient colors
              ),
            ), // set the card height
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/1639390571817.jpg',
                        width: 50,
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          x,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ], // set the card text
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    y,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          formattedDate,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          formattedTime,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

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
              _buildmyCard(context, 'Coding Club', 'Session Details: '),
              Center(
                child: Image.asset(
                  'assets/images/schedule.png',
                  height: 300,
                  width: 300,
                ),
              ),
              Row(
                children: [
                  _buildbtn(context, 'Track Attendance'),
                  _buildbtn(context, 'Prevoius Records'),
                ],
              ),
            ])));
  }
}
