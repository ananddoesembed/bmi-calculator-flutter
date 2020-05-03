import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT')),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
          Expanded( 
            flex: 5,

            child: Container(
              margin: EdgeInsets.all(15.0),
                  decoration:BoxDecoration(color: cActiveContainerColor, borderRadius: BorderRadius.circular(10.0)),
                  width: double.infinity,
                    child: Text('RESULTS',style: TextStyle(fontSize:20.0,),textAlign: TextAlign.center,))
                      ),
          SizedBox(
            height: 30.0,
          ),

          Expanded(
            flex: 1,
              child:Container(
                color: Color(0xFFEB1555),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BMICalculator()));
                    },
                    child:Text('Go Back',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),)),
              ))
        ],),

      );
  }
}
