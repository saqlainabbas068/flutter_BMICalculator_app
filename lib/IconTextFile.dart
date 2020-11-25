import 'package:flutter/material.dart';

class RepeatTextAndIconWidget extends StatelessWidget {
  RepeatTextAndIconWidget({@required this.iconData, this.label});

  final IconData iconData;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,

          ),
        ),
      ],
    );
  }
}
