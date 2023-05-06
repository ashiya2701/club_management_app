import 'package:club_management/Screens/Home_Club.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ShowHalls extends StatefulWidget {
  const ShowHalls({Key? key}) : super(key: key);

  @override
  State<ShowHalls> createState() => _ShowHalls();
}

class _ShowHalls extends State<ShowHalls> {
  List<Map<String, dynamic>> containerData = [
    {"title": "M1", "subtitle": "40 Seats", "tapped": false},
    {"title": "M2", "subtitle": "40 Seats", "tapped": false},
    {"title": "M3", "subtitle": "120 Seats", "tapped": false},
    {"title": "M4", "subtitle": "120 Seats", "tapped": false},
    {"title": "M5", "subtitle": "180 Seats", "tapped": false},
    {"title": "M6", "subtitle": "180 Seats", "tapped": false},
    {"title": "CS Seminar Hall", "subtitle": "100 Seats", "tapped": false},
    {
      "title": "Electrical Seminar Hall",
      "subtitle": "100 Seats",
      "tapped": false
    },
    {
      "title": "Mechanical Seminar Hall",
      "subtitle": "100 Seats",
      "tapped": false
    },
    {
      "title": "Chemical Seminar Hall0",
      "subtitle": "100 Seats",
      "tapped": false
    },
    {"title": "Auditorium", "subtitle": "800 Seats", "tapped": false},
  ];

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
              crossAxisCount: 3, // Set the number of columns
              children: List.generate(11, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      containerData[index]["tapped"] =
                          !containerData[index]["tapped"];
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: containerData[index]["tapped"]
                              ? [
                                  Color.fromARGB(255, 3, 116, 59),
                                  Color.fromARGB(255, 67, 213, 138)
                                ]
                              : [
                                  Color.fromARGB(255, 5, 115, 225),
                                  Color.fromARGB(255, 85, 136, 236)
                                ], // set the gradient colors
                        ), // set the background color of the container
                        borderRadius: BorderRadius.circular(
                            10), // set the border radius of the container
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ],
                      ), // Change color based on the tapped variable
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            containerData[index]["title"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            containerData[index]["subtitle"],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )),
            _buildButton("Book")
          ],
        ));
  }
}
