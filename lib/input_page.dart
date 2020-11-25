import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
const activeColor = Color(0xFF1D1E33);
const deactiveColor = Color(0xFF111328);



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
Color maleColor = deactiveColor;
Color femaleColor = deactiveColor;
class _InputPageState extends State<InputPage> {
void updateColor(int gender)
{
  if(gender == 1)
    {
      maleColor = activeColor;
      femaleColor = deactiveColor;
    }
  if(gender == 2)
  {
    femaleColor = activeColor;
    maleColor = deactiveColor;
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR' ),
      ),
      body: Column(
      children: <Widget>[
        Expanded(child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    updateColor(1);
                  });
                  },
                child: RepeatContainerCode(
                  colors: maleColor,
                  cardWidget: RepeatTextAndIconWidget(
                  iconData:FontAwesomeIcons.male,
                  label: "MALE",

                ),
                ),
              ),
            ),
            Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: RepeatContainerCode(
                    colors: femaleColor,
                    cardWidget: RepeatTextAndIconWidget(
                    iconData:FontAwesomeIcons.female,
                    label: "FEMALE",
    ),
                  ),
                ),
            ),
          ],
        ),
        ),

        Expanded(child: new RepeatContainerCode(
          colors: Color(0xFF1D1E33),
        ),
        ),

        Expanded(child: Row(
          children: <Widget>[
          Expanded(child: new RepeatContainerCode(
            colors: Color(0xFF1D1E33),
          ),
          ),
          Expanded(
              child: new RepeatContainerCode(
                colors: Color(0xFF1D1E33),
              ),
          ),
         ],
       ),
        ),
       ],
    ),);
  }
}


