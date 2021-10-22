import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/coffe.jpg')),
                  Text(
                    'Flutter Kahvecisi',
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: 45,
                        fontFamily: 'Pacifico'),
                  ),
                  Text(
                    'Bir Fincan Uzağınızda',
                    style: TextStyle(color: kTextColor, fontSize: 20),
                  ),
                  Divider(
                    height: 30,
                    indent: 90,
                    endIndent: 90,
                    color: Colors.black54,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                      ),
                      title: Text(
                        'durmus@outlook.com',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(
                        '05073737131',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
