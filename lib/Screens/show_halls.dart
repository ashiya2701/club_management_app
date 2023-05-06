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
  bool _isTapped = false;
  Widget _buildmyCard(
    BuildContext context,
    String x,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped;
        });
      },
      child: Card(
        elevation: 5.0, // set the card elevation
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(15.0), // set the rounded corner radius
        ),
        child: Container(
          width: 75.0, // set the card width
          height: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: _isTapped ? Colors.blue : Colors.grey,
          ), // set the card height
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                x,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ), // set the card text
            ),
          ),
        ),
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
            height: 80,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildmyCard(context, 'M1'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildmyCard(context, 'M2'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildmyCard(context, 'M3'),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildmyCard(context, 'M4'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildmyCard(context, 'M5'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildmyCard(context, 'M6'),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildmyCard(context, 'CH SH'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildmyCard(context, 'CS SH'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildmyCard(context, 'ME SH'),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  _buildmyCard(context, 'EE SH'),
                  SizedBox(
                    width: 40,
                  ),
                  _buildmyCard(context, 'AUDI'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              () => Get.to(() => HomeClub());
            },
            child: Text(
              'Book',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ],
      ),
    );
  }
}
