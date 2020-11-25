import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lecture55/ConstantFile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'ConstantFile.dart';

enum Gender
{
  male,
  female,
}


class InputPage extends StatefulWidget
{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Gender selectGender;
  /*
 Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;
  void updateColor(Gender genderType)
{
  if(genderType == Gender.male)
    {
      maleColor = activeColor;
      femaleColor = deactiveColor;
    }
  if(genderType == Gender.female)
  {
    femaleColor = activeColor;
    maleColor = deactiveColor;
  }
} Sary code ki jaja tarnarye operator use kia ha
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR' ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(child: Row(
          children: <Widget>[
            Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.male;
                    });
                  },
                  colors: selectGender==Gender.male?activeColor:deactiveColor,
                  cardWidget: RepeatTextAndIconWidget(
                  iconData:FontAwesomeIcons.male,
                  label: "MALE",

                ),
                ),

            ),
            Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        selectGender=Gender.female;
                      });
                    },
                    colors:selectGender==Gender.female?activeColor:deactiveColor,
                    cardWidget: RepeatTextAndIconWidget(
                    iconData:FontAwesomeIcons.female,
                    label: "FEMALE",
    ),
                  ),
            ),
          ],
        ),
        ),

        Expanded(child: new RepeatContainerCode(
          colors: Color(0xFF1D1E33),
          cardWidget: Column(
            children: <Widget>[
              Text('Height',style: kLabelStyle),

            ],

            )
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


