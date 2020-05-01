import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable.dart';
import 'constants.dart';

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
  Color maleCardColor = cContainerColor;
  Color femaleCardColor = cContainerColor;
  bool genderToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCode(
                    colour: selectedGender == gender.male
                        ? cActiveContainerColor
                        : cContainerColor,
                    cardChild: ReusableColumn(
                      awesomeIcon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                    onPressed: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                    child: ReusableCode(
                  colour: selectedGender == gender.female
                      ? cActiveContainerColor
                      : cContainerColor,
                  cardChild: ReusableColumn(
                    awesomeIcon: FontAwesomeIcons.venus,
                    gender: 'FEMALE',
                  ),
                  onPressed: () {
                    setState(() {
                      selectedGender = gender.female;
                    });
                  },
                ))
              ]),
            ),
            Expanded(
              child: ReusableCode(
                  colour: cContainerColor,
                  cardChild: Text(
                    'HEIGHT',
                    style: cLabel,
                    textAlign: TextAlign.center,
                  )),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCode(
                    colour: cContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCode(colour: cContainerColor),
                )
              ]),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: cBottomContainerHeight,
            ),
          ]),
    );
  }
}
