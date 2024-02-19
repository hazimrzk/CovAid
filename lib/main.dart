import 'package:covaid/layers/home.dart';
import 'package:flutter/material.dart';
import 'layers/home.dart';
import 'layers/daily.dart';
import 'layers/state_show.dart';
import 'layers/loading.dart';
import 'layers/about.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/daily': (context) => Daily(),
      '/show': (context) => StateShow(),
      '/about': (context) => About(),
    }));
