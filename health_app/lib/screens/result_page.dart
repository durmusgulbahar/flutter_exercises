import 'package:flutter/material.dart';
import 'package:health_app/screens/user_data.dart';

class ResultPage extends StatelessWidget {
  static String routeName = 'resultPage';
  final UserData? result;
  String? gender;

  ResultPage(this.result);

  double? calculator(UserData? user) {
    int r = 0;
    int w = 0;

    if (user != null) {
      r = (user.height! + user.weight!.toInt());
      if (user.cigar == 0 && user.exercise != 0) {
        w = user.exercise!.toInt();
      } else if (user.exercise == 0 && user.cigar != 0) {
        w = w = user.cigar!.toInt();
      } else if (user.exercise == 0 && user.cigar == 0) {
        w = 1;
      } else {
        w = user.cigar!.toInt() * user.exercise!.toInt();
      }
    }

    return (w / r) * 100;
  }

  @override
  Widget build(BuildContext context) {
    if (result?.tap == 0) {
      gender = 'FEMALE';
    } else {
      gender = 'MALE';
    }

    double? x = calculator(result);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Result',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                  'Gender : ${gender},\n Height(cm) :${result?.height},\n Weight(kg) :${result?.weight},\n Exercise in a week :${result?.exercise?.toInt()},\n Cigars in a day :${result?.cigar?.toInt()},\n RESULT IS:${x}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
        ],
      ),
    );
  }
}
