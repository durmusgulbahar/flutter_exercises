import 'package:flutter/material.dart';

import 'route_pink.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  String msg = 'HomePageMesajı';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text('Sayfalar Arası Geçiş / Navigation')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('HomePage'),
        ElevatedButton(
            child: Text('Git -> Route Pink'),
            onPressed: () {
              Navigator.pushNamed(context, RoutePink.routeName, arguments: msg);
            })
      ])),
    );
  }
}
