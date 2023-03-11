import 'package:club_management/Models/session.dart';
import 'package:club_management/Screens/Session_details.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
Map<DateTime, List<Session>> events = {
  DateTime(2023, 3, 8): [Session('Session A',0)],
  DateTime(2023, 3, 9): [Session('Session B',0)],
  DateTime(2023, 3, 10): [Session('Session C',0)],
};
class SessionCalendar extends StatefulWidget {
  const SessionCalendar({Key? key}) : super(key: key);

  @override
  State<SessionCalendar> createState() => _SessionCalendarState();
}

class _SessionCalendarState extends State<SessionCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  // DateTime start= DateTime()
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        leading:
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),

        title:  const Text(
              'Club Calendar',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                // fontSize: 26.0,
              ),
            ),
         actions:[    IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        backgroundColor: Colors.black,
        ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Material(
            elevation: 10.0,
            child: SizedBox(
              height: 135,
              child: TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2025, 12, 31),
                calendarFormat: _calendarFormat,
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay; // update `_focusedDay` here as well
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 20,),
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:[Color(0xFF000102),
                Color(0xFF464B55)], // set the gradient colors
            ),),
          child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => Details()),
                );

          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5.0,
            padding: EdgeInsets.all(15.0),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.blueGrey,
          ),
          child: Text(
           'Book this slot',
            style: const TextStyle(color: Colors.white, fontFamily: 'Poppins'),
          ),
      ),
        ),
          const SizedBox(height: 20,),
           // Text('here'),
          Expanded(
            child: ListView.builder(
              itemCount: 3, // set the number of items in the list
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Material(
                    elevation: 10.0,
                    child: Container(
                      width: 70.0, // set the card width
                      height: 70.0,
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
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Color(0xFF000102),
                                        Color(0xFF464B55)], // set the gradient colors
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(child: Icon(Icons.checklist, color: Colors.white,)),
                                  )),
                              const SizedBox(width: 50.0,),
                              Text(
                                'Other Club Sessions',
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
    );
  }
}
