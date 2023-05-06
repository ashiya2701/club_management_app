import 'package:club_management/Screens/Home_Club.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ShowHaals extends StatefulWidget {
  const ShowHaals({Key? key}) : super(key: key);

  @override
  State<ShowHaals> createState() => _ShowHaals();
}

class _ShowHalls1 extends State<ShowHaals> {
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
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'M1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '40 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'M2',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '40 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'M3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '100 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'M4',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '100 Seats',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'M5',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '180 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'M6',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '180 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Chemical Seminar Hall',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '100 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CS Seminar Hall',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '100 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Mechanical Seminar Hall',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '100 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Electrical Seminar Hall',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '120 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF000102),
                            Color(0xFF464B55)
                          ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ], // add a box shadow to the container
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Auditorium',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '800 Seats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            _buildButton("Book")
          ],
        ));
  }
}
