import 'package:flutter/material.dart';

class  question extends StatelessWidget {
final String q;
question(this.q);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(q,style: TextStyle(fontSize: 28),textAlign: TextAlign.center,),
    width: double.infinity,
    margin: EdgeInsets.all(10),
    );
  }
}