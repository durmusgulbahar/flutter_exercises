import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

import 'home_page.dart';

class Waiter extends StatelessWidget {
  static const String routeName = 'waiter';

  @override
  Widget build(BuildContext context) {
    Timer timer = Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SizedBox(
                height: 200,
                width: 200,
                child: CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey,
                  strokeWidth: 20,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(width: 20.0, height: 100.0),
                  const Text(
                    'Be',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  const SizedBox(width: 20.0, height: 200.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Horizon',
                      color: Colors.red,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText('PATIENT...'),
                      ],
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
