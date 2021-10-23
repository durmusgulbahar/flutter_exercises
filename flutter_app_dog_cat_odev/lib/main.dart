import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 15,
          centerTitle: true,
          title: Text(
            'MyApp',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: FirstPage(),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int dogNo = 1;
  List<String> names = ['FIRST DOG', 'LAST DOG'];
  String dogName = '';
  void x() {
    setState(() {
      dogNo = Random().nextInt(2) + 1;
      print('$dogNo');
      dogName = names[dogNo - 1];
      print(dogName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                child: SizedBox(
                  child: Image.asset('assets/images/cat1.jpg'),
                  height: 150,
                  width: 150,
                ),
                onPressed: () {}),
          )),
          Divider(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: SizedBox(
                child: Image.asset('assets/images/cat2.jpeg'),
                height: 150,
                width: 150,
              ),
              onPressed: () {
                print('SECOND CAT');
              },
            ),
          )),
          Divider(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: TextButton(
                child: Image.asset('assets/images/dog$dogNo.jpg'),
                onPressed: x,
              ),
              height: 150,
              width: 150,
            ),
          )),
          Text(
            '$dogName',
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          Divider(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Image.asset('assets/images/dog2.jpg'),
              height: 150,
              width: 150,
            ),
          )),
          Text('LAST DOG'),
        ],
      ),
    );
  }
}
