import 'package:flutter/material.dart';
import 'package:flutter_and_firebase/screens/landing_page.dart';
import 'package:flutter_and_firebase/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(
        // auth: Auth(),
      ),
    );
  }
}
