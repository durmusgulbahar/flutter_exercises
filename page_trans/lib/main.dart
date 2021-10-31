import 'package:flutter/material.dart';
import 'package:page_trans/screens/route_green.dart';
import 'package:page_trans/screens/route_grey.dart';
import 'package:page_trans/screens/route_pink.dart';

import 'screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.grey)),
      home: HomePage(),
      // routes: {
      //   // HomePage.routeName: (context) => HomePage(),
      //   // RoutePink.routeName: (context) => RoutePink(),
      //   //RouteGreen.routeName: (context) => RouteGreen(),
      //   //  RouteGrey.routeName: (context) => RouteGrey(),
      // },

      onGenerateRoute: (settings) {
        // if (settings.name == HomePage.routeName) {
        //   return MaterialPageRoute(builder: (context) => HomePage());
        // }
        // if (settings.name == RoutePink.routeName) {
        //   return MaterialPageRoute(builder: (context) => RoutePink());
        // }
        // if (settings.name == RouteGreen.routeName) {
        //   return MaterialPageRoute(builder: (context) => RouteGreen());
        // }
        // if (settings.name == RouteGrey.routeName) {
        //   return MaterialPageRoute(builder: (context) => RouteGrey());
        // }
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (context) => HomePage());
          case RoutePink.routeName:
            return MaterialPageRoute(
                builder: (context) => RoutePink(
                      gelenMsg: settings.arguments,
                    ));
          case RouteGreen.routeName:
            return MaterialPageRoute(builder: (context) => RouteGreen());
          case RouteGrey.routeName:
            return MaterialPageRoute(builder: (context) => RouteGrey());
        }
      },
    );
  }
}
