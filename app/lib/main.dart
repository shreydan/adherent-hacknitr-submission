import 'package:app/pages/splashscreen.dart';

import 'loginid.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashScreen(
        title: 'Adherent',
      ),
    );
  }
}
