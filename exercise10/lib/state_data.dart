import 'package:flutter/widgets.dart';

class StateData extends ChangeNotifier {
  String sehir = 'default';

  void change(String s) {
    sehir = s;
    notifyListeners();
  }
}
