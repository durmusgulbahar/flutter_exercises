import 'package:exercise10/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text('Tema Seçimi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SwitchListTile(
                title: Provider.of<ThemeColorData>(context).isGreen
                    ? Text('Green Theme')
                    : Text('Red Theme'),
                onChanged: (_) {
                  Provider.of<ThemeColorData>(context, listen: false)
                      .changeTheme();
                },
                value: Provider.of<ThemeColorData>(context).isGreen),
            Card(
              child: ListTile(
                title: Text("Yapılacaklar"),
                trailing: Icon(Icons.check_box),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              child: Text("Ekle"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
