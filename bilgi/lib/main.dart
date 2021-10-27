import 'package:bilgi/constants.dart';
import 'package:bilgi/test_veri.dart';
import 'package:flutter/material.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  int dogruYanlis = -1;

  test_veri test = test_veri();
  String mainText = '';

  List<Icon> iconList = [];

  void butonFonksiyon(bool yanit) {
    if (test.sonSoru()) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Bilgi Yarismasi Bitti'),
              content: Text('Baştan Başlamak İçin Butona Tıklayınız'),
              elevation: 24,
              actions: [
                Center(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          iconList.clear();
                          test.reset();
                          Navigator.of(context).pop();
                        });
                      },
                      child: Container(
                        child: Text(
                          'Resetle',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      )),
                )
              ],
            );
          });
      //iconList.clear();
      //test.reset();
    } else {
      setState(() {
        bool dogruYanit = test.getYanit();
        dogruYanit == yanit
            ? iconList.add(kDogruIcon)
            : iconList.add(kYanlisIcon);
        test.incIndex();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            onLongPress: () {
              setState(() {
                iconList.clear();
                test.reset();
              });
            },
            child: Text(
              'Reset',
              style: TextStyle(backgroundColor: Colors.red),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                mainText = test.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          spacing: 2,
          children: iconList,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.thumb_down,
                              size: 30.0,
                            ),
                          ),
                          onPressed: () {
                            butonFonksiyon(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.thumb_up, size: 30.0),
                          ),
                          onPressed: () {
                            butonFonksiyon(true);
                          },
                        )))
              ])),
        )
      ],
    );
  }
}
