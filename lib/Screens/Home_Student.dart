import 'dart:ffi';
import 'package:club_management/Screens/student_attendance.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'student_attendance.dart';

class HomeStudent extends StatefulWidget {
  const HomeStudent({super.key});

  @override
  State<HomeStudent> createState() => _HomeStudentState();
}

class _HomeStudentState extends State<HomeStudent> {
  // var list = [
  //   'Linked Lists',
  //   'Stacks/Queues',
  //   'Arrays and Strings',
  //   'Introduction to C++'
  // ];
  List<Map<String, dynamic>> items = [
    {
      "title": "D.Cypher",
      "subtitle": "Scheduled a session on 15th March",
      "imageUrl": 'assets/images/d.cypher.jpeg'
    },
    {
      "title": "Coding",
      "subtitle": "Shared results of Coder of the Month",
      "imageUrl": 'assets/images/codingclub.png'
    },
    {
      "title": "Alankar",
      "subtitle": "Organising vent of Vistoso 2023",
      "imageUrl": 'assets/images/alankar.png'
    },
    {
      "title": "Aeromodelling",
      "subtitle": "Scheduled a session on 19th March",
      "imageUrl": 'assets/images/aermodelling.jpeg'
    },
  ];
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
          'Student Manager',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 60),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Ayush',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '2020EEB1356',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mark Attendance',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/d.cypher.jpeg'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrackStudentAttendance()),
                        );
                        // handle button click
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/debsoc.jpeg'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrackStudentAttendance()),
                        );
                        // handle button click
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/codingclub.png'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrackStudentAttendance()),
                        );
                        // handle button click
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/enactus.jpeg'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrackStudentAttendance()),
                        );
                        // handle button click
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/alankar.png'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrackStudentAttendance()),
                        );
                        // handle button click
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/aermodelling.jpeg'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrackStudentAttendance()),
                        );
                        // handle button click
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Updates',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(items[index]["imageUrl"]),
                  title: Text(items[index]["title"]),
                  subtitle: Text(items[index]["subtitle"]),
                );
              },
            )),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: list.length, // set the number of items in the list
            //     itemBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Material(
            //           elevation: 10.0,
            //           child: Container(
            //             width: 80.0, // set the card width
            //             height: 80.0,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20.0),
            //               gradient: const LinearGradient(
            //                 begin: Alignment.topRight,
            //                 end: Alignment.bottomLeft,
            //                 colors: [
            //                   Color(0xFFF2F7FA),
            //                   Color(0xFFE4EFF5),
            //                 ], // set the gradient colors
            //               ),
            //             ), // set the card height
            //             child: Padding(
            //               padding: const EdgeInsets.all(10.0),
            //               child: Center(
            //                 child: Row(
            //                   children: [
            //                     Container(
            //                         width: 50,
            //                         height: 50,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(10.0),
            //                           gradient: LinearGradient(
            //                             begin: Alignment.topCenter,
            //                             end: Alignment.bottomCenter,
            //                             colors: [
            //                               Color(0xFF000102),
            //                               Color(0xFF464B55)
            //                             ], // set the gradient colors
            //                           ),
            //                         ),
            //                         child: Padding(
            //                           padding: const EdgeInsets.all(10.0),
            //                           child: Center(
            //                               child: Icon(
            //                             Icons.calendar_month,
            //                             color: Colors.white,
            //                           )),
            //                         )),
            //                     const SizedBox(
            //                       width: 50.0,
            //                     ),
            //                     Text(
            //                       list[index],
            //                       style: const TextStyle(
            //                         color: Colors.black,
            //                         fontFamily: 'Poppins',
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 ), // set the card text
            //               ),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
