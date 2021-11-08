import 'package:flutter/material.dart';
import '/pages/home/home_page.dart';
import '/pages/perfilmedica_page.dart';
import '/pages/confirmmedica_page.dart';
import '/pages/splash_page.dart';

import '/pages/login_page.dart';
//import 'package:flutter_application_1/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
