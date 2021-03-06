import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable.dart';
import 'constants.dart';
import 'screen2.dart';


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
  int height = 121;
  int age = 2;
  int weight=10;
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
                        ? cContainerColor
                        : cActiveContainerColor,
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
                      ? cContainerColor
                      : cActiveContainerColor,
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
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Text(
                      'HEIGHT',
                      style: cLabel,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),textAlign: TextAlign.center),
                        Text('cm',style:TextStyle(fontSize: 20),textAlign: TextAlign.end,),
                      ],
                    ),
                      SliderTheme(

                        data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                          thumbColor: Color(0xFFEB1555),
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x15EB1555),
                        )
                        ,
                        child: Slider(
                          value: height.toDouble(),
                          min:120.0,
                          max:220,
                          onChanged:(double newValue){
                                setState(() {
                                  height = newValue.round();
                                });
                          } ,
                        ),
                      )],

                  )),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCode(
                    colour: cContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE',style: cLabel,),
                        Text(age.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: 'poi',
                              onPressed: (){
                                setState(() {
                                  age--;
                                  print('ob');
                                });
                              },
                              backgroundColor:Colors.white12,
                              child: Icon(Icons.remove,color: Colors.white,),),
                            SizedBox(
                              width: 30.0,
                            ),
                            FloatingActionButton(
                              heroTag: 'gnh',
                              onPressed: (){
                              setState(() {
                              age++;
                              });},
                              backgroundColor:Colors.white12,
                              child: Icon(Icons.add,color: Colors.white,),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCode(colour: cContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT',style: cLabel,),
                        Text(weight.toString(),style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: 'end',
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor:Colors.white12,
                              child: Icon(Icons.remove,color: Colors.white,),),
                            SizedBox(
                            width: 30.0,
                            ),
                            FloatingActionButton(
                              heroTag: 'two',
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor:Colors.white12,
                              child: Icon(Icons.add,color: Colors.white,),),
                          ],
                        )
                      ],
                    ),),
                )
              ]),
            ),
           GestureDetector(
              onTap: (){

                Navigator.push(context,MaterialPageRoute(builder: (context)=> ScreenTwo()));
              }, child: Container(

                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: cBottomContainerHeight,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  SizedBox(
                  height: 5.0,
                ) ,
                  Text('CALCULATE',style: TextStyle(fontWeight: FontWeight.w900,
                  fontSize: 50.0,
                  color: Colors.white,),textAlign: TextAlign.center,),],

                )

              ),
            ),
          ]),
    );
  }
}
