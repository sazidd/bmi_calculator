import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
            child: Text(
              "Your Result",
              style: titleTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: clr,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: resultTextColor,
                    ),
                    Text(
                      bmiResult,
                      style: bmiTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ],
                ),
              )),
              BottomButton(onTap: (){
                
                Navigator.pop(context);
              }, buttonTitle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
