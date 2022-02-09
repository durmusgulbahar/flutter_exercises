import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Increment with GetX'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${c.count}")),
            TextButton(
              onPressed: () {
                Get.to(() => SecondPage("Durmus"));
              },
              child: Text('SONRAKİ SAYFA'),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.snackbar('Snackbar', 'Example Message');
              },
              child: Text('Snackbar'),
            ),
            MaterialButton(
              child: Text('Dialog'),
              color: Colors.blueAccent,
              onPressed: () {
                Get.defaultDialog(
                  title: 'Example Dialog',
                );
              },
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            c.increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  String? num = "default";

  SecondPage(this.num);
  final Controller ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Text(
          'ÖNCEKİ DATA BU SAYFAYA AKTARILDI : ${ctrl.count}, Ayrıca parametre olarak gönderdiğim data : {$num}',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}
