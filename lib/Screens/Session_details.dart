import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController name = TextEditingController();
  TextEditingController pre_req = TextEditingController();
  TextEditingController start_time = TextEditingController();
  TextEditingController end_time = TextEditingController();
  Widget _buildTF(
      String x, String y, TextEditingController controller, Color myclr) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            x,
            style: TextStyle(color: myclr, fontFamily: 'Poppins', fontSize: 20),
          ),
          SizedBox(height: 5.0),
          Container(
            alignment: Alignment.centerLeft,
            // decoration: kBoxDecorationStyle,
            height: 50.0,
            child: TextField(
              controller: controller,
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: myclr, fontFamily: 'Poppins', fontSize: 15),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: myclr, // set the border color
                      width: 5.0, // set the border width
                    ),
                  ),
                  hintText: y,
                  hintStyle: TextStyle(
                    color: myclr.withOpacity(0.5),
                    fontFamily: 'Poppins',
                  )
                  //contentPadding: EdgeInsets.only(top: 14.0),
                  ),
            ),
          ),
        ],
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
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),

        title: Center(
          child: const Text(
            'Fill Session Details',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              // fontSize: 26.0,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: 600,
        height: double.infinity,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF000102),
              Color(0xFF464B55)
            ], // set the gradient colors
          ),
        ),
        child: Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              _buildTF(
                  'Topic', "What's the session about?", name, Colors.white),
              const SizedBox(
                height: 20,
              ),
              _buildTF(
                  'Pre-Reads',
                  'Fill in any pre-reads for session (if any)',
                  pre_req,
                  Colors.white),
              Container(
                width: 600,
                height: 450,
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
                child: Expanded(
                  child: Column(
                    children: [
                      _buildTF(
                          'Start-Time', '4:00 pm', start_time, Colors.black),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildTF('End-Time', '5:00 pm', end_time, Colors.black),
                      const SizedBox(
                        height: 38,
                      ),
                      Container(
                        height: 60,
                        width: 300,
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
                        ),
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
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.blueGrey,
                          ),
                          child: Text(
                            'Send Message to Members',
                            style: const TextStyle(
                                color: Colors.white, fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
