// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/result_page.dart';
import 'package:health_app/screens/user_data.dart';

import 'components.dart';

class InputPage extends StatefulWidget {
  static const String routeName = 'inputPage';
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int? result;
  int tap = -1;
  double exercise = 0.0;
  double cigar = 0.0;
  int height = 100;
  int weight = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Health App',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Box(
                    child: cardMethod('HEIGHT'),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: Box(
                    child: cardMethod('WEIGHT'),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Box(
              child: Column(
                children: [
                  Text(
                    'How many days a week do you exercise ?',
                    style: textStyle,
                  ),
                  Text(
                    exercise.round().toString(),
                    style: numberStyle,
                  ),
                  Expanded(
                    child: Slider(
                      value: exercise,
                      onChanged: (double newValue) {
                        setState(() {
                          exercise = newValue;
                        });
                      },
                      min: 0,
                      max: 7,
                      divisions: 7,
                    ),
                  )
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Box(
              child: Column(
                children: [
                  Text(
                    'How many cigarettes do you smoke in a day ?',
                    style: textStyle,
                  ),
                  Text(
                    cigar.round().toString(),
                    style: numberStyle,
                  ),
                  Expanded(
                    child: Slider(
                      value: cigar,
                      onChanged: (double newValue) {
                        setState(() {
                          cigar = newValue;
                        });
                      },
                      min: 0,
                      max: 30,
                    ),
                  )
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Box(
                      onTap: () {
                        setState(() {
                          tap = 0;
                        });
                      },
                      boxColor: tap == 0 ? Colors.grey : Colors.white,
                      child: Gender(
                        sex: 'female',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Box(
                      onTap: () {
                        setState(() {
                          tap = 1;
                        });
                      },
                      boxColor: tap == 1 ? Colors.grey : Colors.white,
                      child: Gender(
                        sex: 'male',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(UserData(
                            tap: tap,
                            exercise: exercise,
                            cigar: cigar,
                            height: height,
                            weight: weight))));
              },
              child: Text(
                'Calculate',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith(
                      (states) => Size(double.infinity, 50)),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Row cardMethod(String title) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        RotatedBox(
          child: Text(
            title,
            style: textStyle,
          ),
          quarterTurns: 3,
        ),
        SizedBox(width: 10),
        RotatedBox(
          child: Text(
            title == 'HEIGHT' ? height.toString() : weight.toString(),
            style: numberStyle,
          ),
          quarterTurns: 15,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                  side: MaterialStateProperty.resolveWith((states) =>
                      BorderSide(width: 1, color: Colors.lightBlue))),
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                setState(() {
                  if (title == 'HEIGHT') {
                    height++;
                  } else if (title == 'WEIGHT') {
                    weight++;
                  }
                });
              },
            ),
            OutlinedButton(
              style: ButtonStyle(
                  side: MaterialStateProperty.resolveWith((states) =>
                      BorderSide(width: 1, color: Colors.lightBlue))),
              child: Icon(Icons.arrow_downward),
              onPressed: () {
                setState(() {
                  if (title == 'HEIGHT') {
                    height--;
                  } else if (title == 'WEIGHT') {
                    weight--;
                  }
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
