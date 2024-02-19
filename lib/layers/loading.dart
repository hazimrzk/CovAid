import 'package:covaid/globalvars.dart';
import 'package:flutter/material.dart';
import 'package:covaid/layers/home.dart';
import 'package:covaid/services/database.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:
            initDatabase(), // the function to get your data from firebase or firestore
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.data == null) {
            return Scaffold(
              backgroundColor: Colors.grey[700],
              body: Center(
                child: SizedBox(
                    height: 300,
                    child: Image.asset("assets/images/splash.png")),
              ),
            );
          } else {
            return Home();
          }
        });
  }
}
