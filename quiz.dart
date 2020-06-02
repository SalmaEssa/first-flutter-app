import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class quiz extends StatelessWidget {
  final ques;
  final int ind;
  final Function answer;
  quiz({ @required this.ques,@required this.ind,@required this.answer});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            question(ques[ind]["text"]),
            ...(ques[ind]["ans"] as List<Map<String,Object>>).map((ans){
              return answers(ans["textans"],()=>answer(ans["score"]));
            }).toList()
          ],
        );
  }
}