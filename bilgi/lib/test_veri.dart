import 'package:bilgi/soru.dart';

class test_veri {
  int _soruIndex = 0;

  final List<Soru> _soruListe = [
    Soru('Dünya düzdür', false),
    Soru('Eyfel kulesi Paris şehrindedir.', true),
    Soru('Ampülü Edison icat etmiştir.', true),
    Soru('Güneş dünyanın etrafında döner', false)
  ];

  List<Soru> getListe() {
    return _soruListe;
  }

  String getSoruMetni() {
    return _soruListe[_soruIndex].soruMetni;
  }

  bool getYanit() {
    return _soruListe[_soruIndex].yanit;
  }

  int getIndex() {
    return _soruIndex;
  }

  void incIndex() {
    if (_soruIndex + 1 <= _soruListe.length) {
      _soruIndex++;
    }
  }

  void reset() {
    _soruIndex = 0;
  }

  bool sonSoru() {
    if (_soruIndex + 1 >= _soruListe.length) {
      return true;
    } else
      return false;
  }
}
