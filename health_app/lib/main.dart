import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/input_page.dart';
import 'package:health_app/screens/result_page.dart';

void main() {
  runApp(Health_App());
}

class Health_App extends StatelessWidget {
  const Health_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryColor,
          colorScheme: ColorScheme(
              primary: kPrimaryColor,
              primaryVariant: kPrimaryColor,
              secondary: kSecondaryColor,
              secondaryVariant: kSecondaryColor,
              surface: kSurfaceColor,
              background: kBackgroundColor,
              error: Colors.black,
              onPrimary: kSecondaryColor,
              onSecondary: kBackgroundColor,
              onSurface: kPrimaryColor,
              onBackground: kSecondaryColor,
              onError: kSecondaryColor,
              brightness: Brightness.light)),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
