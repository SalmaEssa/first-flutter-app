
import 'package:flutter/material.dart';


class result extends StatelessWidget {
  int score;
  final Function res;
  result(this.score,this.res);
  String get get_res{
    String res="";
     if (score<=8 )
     {
       res="you are awesom";
     }
     else if (score<=12)
     res="you are pretty likeable";
     else  if (score<=16)
     res="you are strange";
     else {
       res="you are so bad!!";
     }
  return res;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column( children: <Widget>[
      Center(child: Text(get_res, style: TextStyle(color: Colors.black,fontSize:25),),),
      FlatButton(onPressed: res, color: Colors.purple, child: Text("Rest the quiz", style: TextStyle(color: Colors.black), ),)

    ],

    ),
    );
  }
}