import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      title: 'Riverpod Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod Tutorial'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HelloClass {
  final value = 'hello';
}

class SecondClass {
  final HelloClass helloClass;
  SecondClass(this.helloClass);
}
