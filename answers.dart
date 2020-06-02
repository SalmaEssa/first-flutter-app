
import 'package:flutter/material.dart';

class answers extends StatelessWidget {
  @override
  final Function func;
  var ans;
  answers(this.ans, this.func);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      margin: EdgeInsets.all(10),
      child:RaisedButton(
              child: Text(ans),
              onPressed: func,
              color: Colors.black,
              textColor: Colors.pink,

            ),
    );
  }
}