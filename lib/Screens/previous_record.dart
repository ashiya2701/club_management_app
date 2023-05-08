import 'package:club_management/Screens/bar_model.dart';
import 'package:flutter/material.dart';
import 'package:club_management/Screens/calendar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:pie_chart/pie_chart.dart';



class PreviousRecords extends StatefulWidget {
  const PreviousRecords({super.key});

  @override
  State<PreviousRecords> createState() => _PreviousRecordsState();
}

class _PreviousRecordsState extends State<PreviousRecords> {
  @override

  Map<String, double> dataMap = {
    "Present": 65,
    "Absent": 45,
  };
  
  static List<charts.Series<BarModel, String>> _createSampleData(){
    final data = [
      BarModel("Session 1", 50),
      BarModel("Session 2", 70),
      BarModel("session 3", 65),
    ];
    return [
      charts.Series<BarModel, String>(
        data:data, 
        id: 'Records',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (BarModel barModeel, _) =>barModeel.session,
        measureFn: (BarModel barModeel, _) => barModeel.value,
      )
    ];
  }

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
            height: 600.0,
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
                  Center(
                    child: Text(
                      y,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  
                  Center(
                    child: Row(
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
                  ),
                  Container(
                    child: Center(
                      child: PieChart(
                        dataMap: dataMap, 
                        chartRadius: MediaQuery.of(context).size.width/1.7,
                        legendOptions: LegendOptions(
                          legendPosition: LegendPosition.bottom,
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValuesInPercentage: true,
                        ),
                      )

                    )
                  ),
                ],
              ),
            ),
          ),
          
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: const Text(
            'Previous Records',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              // fontSize: 26.0,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                _buildmyCard(context, 'Coding Club', 'Session Details: '),
                SizedBox(height: 60),
                Container(
                  height : 200,
                  child: charts.BarChart(
                    _createSampleData(),
                    animate: false,
                  )
                ),
              
              ])),
        ));
  }
}