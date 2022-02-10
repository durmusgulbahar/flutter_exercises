import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: CardDialog(),
          ),
        ));
  }
}

class KartLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Placeholder(
            fallbackHeight: 50,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Placeholder(
                fallbackHeight: 50,
              ),
            ),
            Expanded(
              child: Placeholder(
                fallbackHeight: 50,
              ),
            ),
          ],
        ),
        Placeholder(
          fallbackHeight: 50,
        ),
      ]),
    );
  }
}

class CardDialog extends StatelessWidget {
  const CardDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CardInput(
            text: 'Kart  Numarası',
            icon: Icon(Icons.credit_card),
            type: 'kart',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CardInput(
                  text: 'Son Kullanma Tarihi',
                  icon: Icon(Icons.calendar_today),
                  type: 'tarih',
                ),
              ),
              Expanded(
                child: CardInput(
                  text: 'Güvenlik Kodu',
                  icon: Icon(Icons.info_outlined),
                  type: 'kod',
                  hide: true,
                ),
              ),
            ],
          ),
          CardInput(
            text: 'Kart Sahibinin Adı',
            type: 'isim',
          ),
        ],
      ),
    );
  }
}

class CardInput extends StatelessWidget {
  CardInput(
      {required this.text,
      this.hintText,
      this.icon,
      this.hide = false,
      this.type});

  final String text;
  final String? hintText;
  final Icon? icon;
  bool hide;
  final String? type;
  TextInputType typeX = TextInputType.none;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'kart':
        typeX = TextInputType.number;
        break;
      case 'tarih':
        typeX = TextInputType.datetime;
        break;
      case 'kod':
        typeX = TextInputType.visiblePassword;
        break;
      case 'isim':
        typeX = TextInputType.name;
        break;
    }

    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller,
              textInputAction: TextInputAction.done,
              keyboardType: typeX,
              obscureText: hide,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: hintText,
                  labelText: text,
                  alignLabelWithHint: true,
                  suffixIcon: icon,
                  contentPadding: EdgeInsets.all(10)),
              enabled: true,
            ),
          ]),
    );
  }
}
