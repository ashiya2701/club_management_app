import 'package:club_management/Screens/Home_Club.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Home_Club.dart';

class PresentStudents extends StatefulWidget {
  const PresentStudents({super.key});

  @override
  State<PresentStudents> createState() => _PresentStudentsState();
}

class _PresentStudentsState extends State<PresentStudents> {
  @override
  var list = [
    'Ayush                    2020eeb1113',
    'Ashiya                   2020mcb1231',
    'Ayushi                   2020mcb1339',
    'Princy                   2020mcb1193',
    'Ayushi                   2020mcb1233',
    'Aena                     2020eeb1128'
    
  ];
  

  Widget _buildbtn(BuildContext context, String x) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: ElevatedButton(
        onPressed: () {   
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeClub()),
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
            'Attedance',
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
              SizedBox(height: 5),
              Card(
                color: Colors.black,
                elevation: 10.0,
                child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    'Present Students',
                    textAlign: TextAlign.center,
                     style: TextStyle(fontSize: 20, color: Colors.white,),
                   ),
                  ),
                ),
              SizedBox(height: 90),

              Container(
                height: 300,
                child: Expanded(
                child: ListView.builder(
                  itemCount: list.length, // set the number of items in the list
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        elevation: 10.0,
                        child: Container(
                          width: 80.0, // set the card width
                          height: 80.0, // set the card height
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
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10.0,
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
              ),
            SizedBox(height: 90,),
            Card(
            elevation: 10.0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Present 6/10',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildbtn(context, 'Go to home page'),
                  ],
                ),
              ),
            ),
            ])));
  }
}