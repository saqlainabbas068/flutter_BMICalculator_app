import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result',
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Text("body data"),
    );
  }
}