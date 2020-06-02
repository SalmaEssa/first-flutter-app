import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';
import './quiz.dart';
import './result.dart';


void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  myAppState createState() => myAppState();
}

class myAppState extends State<myApp> { 
  var ind=0;
  int score=0;
   var ques=[{
     "text":"what is your favourite color",
     "ans": [{"textans":"red", "score": 10},{"textans":"green","score":3},{"textans":"blue","score":1}]
   },{
     "text":"what is your favourite animal",
     "ans":[{"textans":"snake", "score": 10},{"textans":"dog","score":3},{"textans":"cat","score":1}]
   },{
   "text":"what is your favourite hobby",
     "ans":[{"textans":"killing ", "score": 10},{"textans":"driving","score":3},{"textans":"swimming","score":1}]
   }];
  void answer(int s){
    ind+=1;
    score+=s;
    setState(() {print("hh") ;
      
    }); 
    print(ind);
  }
void restart(){
    
    setState(() {ind=0 ; score=0;
      
    }); 
    print(ind);
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: ind<ques.length? quiz(ques: ques, ind: ind,answer: answer):result(score,restart),
      ),
    );
  }
}
