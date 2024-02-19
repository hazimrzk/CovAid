import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Map<String, int> dailyCases = {};
Map<String, double> dailyCasesReg = {};
Map<String, int> stateCases = {};
Map<String, String> stateCasesCol = {};

String dataDate = '';

Future dailyCasesInit() async {
  await Firebase.initializeApp();
  CollectionReference _collectionRef1 =
      FirebaseFirestore.instance.collection('daily-cases');
  QuerySnapshot querySnapshot = await _collectionRef1.get();
  final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  for (var i = 0; i < allData.length; i++) {
    Timestamp time = allData[i]["date"];
    DateTime date = time.toDate();
    dailyCases[date.toString().split(' ')[0]] = allData[i]["new-cases"];
  }
  // dailyCases.forEach((k, v) => print('$k: $v'));
}

Future dailyCasesRegInit() async {
  CollectionReference _collectionRef2 =
      FirebaseFirestore.instance.collection('daily-cases-reg');
  QuerySnapshot querySnapshot = await _collectionRef2.get();
  final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  for (var i = 0; i < allData.length; i++) {
    Timestamp time = allData[i]["date"];
    DateTime date = time.toDate();
    dailyCasesReg[date.toString().split(' ')[0]] = allData[i]["new-cases-reg"];
  }
  // dailyCasesReg.forEach((k, v) => print('$k: $v'));
}

Future stateCasesInit() async {
  CollectionReference _collectionRef3 =
      FirebaseFirestore.instance.collection('state-cases');
  QuerySnapshot querySnapshot = await _collectionRef3.get();
  final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  Timestamp time = allData.last["date"];
  DateTime date = time.toDate();
  dataDate = date.toString().split(' ')[0];
  allData.last.remove('date');
  allData.last.forEach((state, cases) {
    stateCases[state] = cases;
  });
  // stateCases.forEach((k, v) => print('$k: $v'));
}

Future stateCasesColInit() async {
  CollectionReference _collectionRef4 =
      FirebaseFirestore.instance.collection('state-cases-col');
  QuerySnapshot querySnapshot = await _collectionRef4.get();
  final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  allData.last.remove('date');
  allData.last.forEach((state, color) {
    stateCasesCol[state] = color;
  });
  // stateCasesCol.forEach((k, v) => print('$k: $v'));
}

Future initDatabase() async {
  // ignore: await_only_futures
  await dailyCasesInit();
  await dailyCasesRegInit();
  await stateCasesInit();
  await stateCasesColInit();
  return true;
}
