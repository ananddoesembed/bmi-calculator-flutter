import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const activeContainerColor = Color(0xFF111500);
enum gender {
  male,
  female,
}

gender selectedGender;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = containerColor;
  Color femaleCardColor = containerColor;
  bool genderToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = gender.male;
                    print('object');
                  });
                },
                child: ReusableCode(
                  colour: selectedGender == gender.male
                      ? activeContainerColor
                      : containerColor,
                  cardChild: ReusableColumn(
                    awesomeIcon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                  ),
                ),
              ),
            ),
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = gender.female;
                  print('object');
                });
              },
              child: ReusableCode(
                colour: selectedGender == gender.female
                    ? activeContainerColor
                    : containerColor,
                cardChild: ReusableColumn(
                  awesomeIcon: FontAwesomeIcons.venus,
                  gender: 'FEMALE',
                ),
              ),
            ))
          ]),
        ),
        Expanded(
          child: ReusableCode(colour: containerColor),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReusableCode(
                colour: containerColor,
              ),
            ),
            Expanded(
              child: ReusableCode(colour: containerColor),
            )
          ]),
        ),
        Container(
          color: Color(0xFFEB1555),
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ]),
    );
  }
}
