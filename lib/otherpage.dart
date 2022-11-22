import 'package:flutter/material.dart';

class op extends StatelessWidget {
  final String mtext;
   op( this.mtext, {super.key}) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mtext)),
      body: Center(
        child: Text(mtext)
      ),
    );
  }
}
