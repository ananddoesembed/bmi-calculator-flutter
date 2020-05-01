import 'package:flutter/material.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn({@required this.awesomeIcon, this.gender});
  final IconData awesomeIcon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(awesomeIcon, size: 80.0),
        SizedBox(
          height: 20.0,
        ),
        Text(gender, style: TextStyle(fontSize: 20))
      ],
    );
  }
}

class ReusableCode extends StatelessWidget {
  ReusableCode({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
