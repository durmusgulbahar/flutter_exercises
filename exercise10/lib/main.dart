import 'package:exercise10/wait_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './theme_data.dart';
import 'home_page.dart';

void main() => runApp(ChangeNotifierProvider<ThemeColorData>(
      child: MyApp(),
      create: (context) {
        return ThemeColorData();
      },
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeColorData>(context, listen: false).loadTheme();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeColorData>(context).themeColor,
      home: Waiter(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (context) => HomePage());
          case Waiter.routeName:
            return MaterialPageRoute(builder: (context) => Waiter());
        }
      },
    );
  }
}
