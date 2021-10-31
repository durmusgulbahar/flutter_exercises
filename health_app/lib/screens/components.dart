import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color? boxColor;
  final Widget? child;
  final Function? onTap;

  Box({this.boxColor = Colors.white, this.child, this.onTap = null});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: child),
      ),
    );
  }
}

class Gender extends StatelessWidget {
  String sex;
  Color color = Colors.black;
  IconData? icon;

  Color containerColor = Colors.transparent;

  Gender({
    this.sex = 'default',
  });

  @override
  Widget build(BuildContext context) {
    if (sex == 'male') {
      color = Colors.lightBlue;
      icon = Icons.male;
    } else if (sex == 'female') {
      color = Colors.pinkAccent;
      icon = Icons.female;
    }

    return Container(
      color: containerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 90,
            color: color,
          ),
          Text(sex.toUpperCase(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
