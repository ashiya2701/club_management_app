import 'package:flutter/material.dart';
class Hall extends StatefulWidget {
  const Hall({Key? key}) : super(key: key);

  @override
  State<Hall> createState() => _HallState();
}

class _HallState extends State<Hall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Halls'),
    );
  }
}
