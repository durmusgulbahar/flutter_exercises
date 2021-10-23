import 'package:flutter/material.dart';

void main() => runApp(left_right());

class left_right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String seciliButon = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      setState(() {
                        seciliButon = 'sol';
                      });
                    },
                    child: Container(
                      color:
                          seciliButon == 'sol' ? Colors.yellow : Colors.white,
                      height: 200,
                      width: 100,
                      child: Text(seciliButon == 'sol' ? 'Active' : 'Passive'),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        seciliButon = 'sag';
                      });
                    },
                    child: Container(
                      color:
                          seciliButon == 'sag' ? Colors.yellow : Colors.white,
                      height: 200,
                      width: 100,
                      child: Text(seciliButon == 'sag' ? 'Active' : 'Passive'),
                    ))
              ],
            ),
          ),
        ));
  }
}
