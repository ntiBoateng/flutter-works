import 'package:flutter/material.dart';

class customwidgets extends StatelessWidget {
  const customwidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Container(
        color: Colors.deepOrange,
        margin:const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.blue,
          margin:const EdgeInsets.all(20.0),
        ),
      ),

    );
  }
}
