import 'package:flutter/material.dart';

class RouteGrey extends StatelessWidget {
  static const String routeName = 'routeGrey';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('Route Grey')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Şu an RouteGrey en üstte'),
        ElevatedButton(child: Text('Git -> ....'), onPressed: () {}),
        ElevatedButton(
            child: Text('Geri Dön'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ])),
    );
  }
}
