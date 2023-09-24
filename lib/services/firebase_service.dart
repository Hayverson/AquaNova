import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore bd = FirebaseFirestore.instance;

Future<List> getpeople() async {
  List people = [];

  CollectionReference collectionReferencepeople = bd.collection('people');
  QuerySnapshot querypeople = await collectionReferencepeople.get();

  querypeople.docs.forEach((documentos) {
    people.add(documentos.data());
  });

  await Future.delayed(const Duration(seconds: 2));
  return people;
}

// guardar nombres
Future<void> addpeople(String name) async {
  await bd.collection("people").add({"name": name});
}
