import 'package:flutter/material.dart';
import 'package:flutter_app_lecture55/ConstantFile.dart';
import 'ConstantFile.dart';


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
          size: 85.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:kLabelStyle,
        ),
      ],
    );
  }
}
