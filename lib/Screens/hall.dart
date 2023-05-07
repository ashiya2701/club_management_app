import 'package:club_management/Screens/show_hall.dart';
import 'package:flutter/material.dart';
import 'package:club_management/Screens/attendance.dart';
import 'package:club_management/Screens/calendar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Hall extends StatefulWidget {
  const Hall({Key? key}) : super(key: key);

  @override
  State<Hall> createState() => _HallState();
}

class _HallState extends State<Hall> {
  @override
  DateTime date_now = DateTime.now();
  DateTime time_now = DateTime.now();
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMMM d, y').format(date_now);
    String formattedTime = DateFormat('h:mm a').format(time_now);
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: const Text(
          'Hall Booking',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            // fontSize: 26.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Date',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 26.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Time',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 26.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        formattedDate,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        formattedTime,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Card(
                elevation: 5.0, // set the card elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      25.0), // set the rounded corner radius
                ),
                color: Colors.grey[200],
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  width: 350.0,
                  // set the card width
                  height: 180.0,
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
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Enter Capacity',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'Capacity',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(() => ShowHalls());
                          },
                          child: Text('Show Halls'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // SizedBox(
          //   height: 8,
          // ),
        ],
      ),
    );
  }
}
