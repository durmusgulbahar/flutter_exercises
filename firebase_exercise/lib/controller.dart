import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:get/get.dart';

class Controller extends GetxController {
  var movieData;
  final _firestore = FirebaseFirestore.instance;
  final _collection = FirebaseFirestore.instance.collection('movie');
  final _collectionStream =
      FirebaseFirestore.instance.collection('movie').snapshots();

  @override
  void onInit() {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();

    super.onInit();
  }

  CollectionReference getCollection() {
    return _collection;
  }

  Stream<QuerySnapshot> getCollectionStream() {
    return _collectionStream;
  }

  Future<void> addMovie(String name, String photo, int yil) {
    return _collection //database e film ekliyoruz.
        .add({
          'name': name,
          'photoURL': photo,
          'yapim': yil,
        })
        .then((value) => print('Movie added'))
        .catchError((error) => print("Failed to add user $error"));
  }
}
