import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage({@required this.bmi});

  Widget getCardChild() {
    if (bmi < 18.5) {
      //underweight card
      return new ResultCard(
        resultString: kResultMap["underweight"]["title"],
        resultColor: kResultMap["underweight"]["titleColor"],
        bmiString: bmi.toStringAsFixed(1),
        messageString: kResultMap["underweight"]["messageText"],
      );
    } else if (bmi >= 18.5 && bmi < 25) {
      return new ResultCard(
        resultString: kResultMap["normal"]["title"],
        resultColor: kResultMap["normal"]["titleColor"],
        bmiString: bmi.toStringAsFixed(1),
        messageString: kResultMap["normal"]["messageText"],
      );
    } else if (bmi >= 25 && bmi < 30) {
      return new ResultCard(
        resultString: kResultMap["overweight"]["title"],
        resultColor: kResultMap["overweight"]["titleColor"],
        bmiString: bmi.toStringAsFixed(1),
        messageString: kResultMap["overweight"]["messageText"],
      );
    } else {
      return new ResultCard(
        resultString: kResultMap["obese"]["title"],
        resultColor: kResultMap["obese"]["titleColor"],
        bmiString: bmi.toStringAsFixed(1),
        messageString: kResultMap["obese"]["messageText"],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: getCardChild(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: kBottomContainerColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final String resultString, bmiString, messageString;
  final Color resultColor;

  ResultCard({this.resultString,
    this.bmiString,
    this.messageString,
    this.resultColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          resultString,
          style: TextStyle(
            color: resultColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          bmiString,
          style: TextStyle(
            color: Colors.white,
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Normal BMI range is:",
          style: TextStyle(
            color: kTextColor,
            fontSize: 25,
          ),
        ),
        Text(
          "18.5 - 25.0 kg/m2",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        SizedBox(height: 20,),
        Text(
          messageString,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        // FlatButton(
        //   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        //   onPressed: () {},
        //   child: Text(
        //     "SAVE RESULT",
        //     style: TextStyle(
        //       color: kTextColor,
        //       fontSize: 20,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
