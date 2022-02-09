import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_exercise/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Controller c = Get.put(Controller());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 10,
          title: const Text('Firestore Operations'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Add Movie to Database',
                        middleText: "",
                        content: AddMovie());
                  },
                  icon: Icon(Icons.add)),
            ),
          ],
        ),
        body: Center(
          child: StreamBuilder<QuerySnapshot>(
            stream: c.getCollectionStream(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }

              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return ListTile(
                    leading: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(
                          data['photoURL'],
                          width: 150,
                          height: 150,
                        )),
                    title: Text(
                      data['name'],
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text("${data['yapim']}"),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class AddMovie extends StatelessWidget {
  var name = "";
  var yil = "";
  var url = "";

  Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter the name of movie',
            ),
            onChanged: (value) => name = value,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter the year of published',
            ),
            onChanged: (value) => yil = value,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter the foto url',
            ),
            onChanged: (value) => url = value,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: TextButton(
                onPressed: () {
                  c.addMovie(name, url, int.parse(yil));
                },
                child: Text('SAVE')),
          ),
        ],
      ),
    );
  }
}
