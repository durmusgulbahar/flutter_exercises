import 'package:flutter/material.dart';
import 'package:flutter_deneme2/components/constants.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ),
                  ],
                )),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            )),
      ),
    );
  }
}
