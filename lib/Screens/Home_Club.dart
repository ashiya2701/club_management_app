import 'package:club_management/Screens/attendance.dart';
import 'package:club_management/Screens/calendar.dart';
import 'package:club_management/Screens/hall.dart';
import 'package:flutter/material.dart';
import 'membersList.dart';

class HomeClub extends StatefulWidget {
  const HomeClub({Key? key}) : super(key: key);

  @override
  State<HomeClub> createState() => _HomeClubState();
}

class _HomeClubState extends State<HomeClub> {
  var list = [
    'Linked Lists',
    'Stacks/Queues',
    'Arrays and Strings',
    'Introduction to C++'
  ];
  Widget _buildButton(String x) {
    return ElevatedButton(
      onPressed: () {
        if (x == 'Members List') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MemberList()),
        );
  }



      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blueGrey,
      ),
      child: Text(
        x,
        style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
      ),
    );
  }

  Widget _buildmyCard(BuildContext context, String x, Widget route) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Card(
        elevation: 5.0, // set the card elevation
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(25.0), // set the rounded corner radius
        ),
        child: Container(
          width: 200.0, // set the card width
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),

        title: const Text(
          'Club Manager',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            // fontSize: 26.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: const [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Hello Coding Club !',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 20.0,
                  ),
                ),
                // SizedBox(width: 80,),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton('Last Session Details'),
                const SizedBox(
                  width: 10,
                ),
                _buildButton('Members List'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildmyCard(
                      context, 'Book a Session Slot', SessionCalendar()),
                  const SizedBox(
                    width: 10,
                  ),
                  _buildmyCard(context, 'Book a Hall', Hall()),
                  const SizedBox(
                    width: 10,
                  ),
                  _buildmyCard(context, 'Track Attendance', Attendance()),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length, // set the number of items in the list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Material(
                      elevation: 10.0,
                      child: Container(
                        width: 80.0, // set the card width
                        height: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFF2F7FA),
                              Color(0xFFE4EFF5),
                            ], // set the gradient colors
                          ),
                        ), // set the card height
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF000102),
                                          Color(0xFF464B55)
                                        ], // set the gradient colors
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                          child: Icon(
                                        Icons.calendar_month,
                                        color: Colors.white,
                                      )),
                                    )),
                                const SizedBox(
                                  width: 50.0,
                                ),
                                Text(
                                  list[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ), // set the card text
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
