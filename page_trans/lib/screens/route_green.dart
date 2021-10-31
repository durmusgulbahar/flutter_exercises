import 'package:flutter/material.dart';
import 'route_grey.dart';

class RouteGreen extends StatelessWidget {
  static const String routeName = 'routeGreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('Route Green')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Şu an RouteGreen en üstte'),
        ElevatedButton(
            child: Text('Git -> Route Grey'),
            onPressed: () {
              Navigator.pushNamed(context, RouteGrey.routeName);
            }),
        ElevatedButton(
            child: Text('Geri Dön'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ])),
    );
  }
}
