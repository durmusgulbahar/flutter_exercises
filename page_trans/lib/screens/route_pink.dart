import 'package:flutter/material.dart';
import 'route_green.dart';

class RoutePink extends StatelessWidget {
  static const String routeName = 'routePink';

  late Object? gelenMsg;

  RoutePink({this.gelenMsg});

  @override
  Widget build(BuildContext context) {
    //Object? gelenMsg = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text('Route Pink')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('$gelenMsg'),
        ElevatedButton(
            child: Text('Git -> Route Green'),
            onPressed: () {
              Navigator.pushNamed(context, 'routeGreen');
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
