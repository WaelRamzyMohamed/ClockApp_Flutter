//*************************************************************
// GDSC Flutter course - session 03 - Thursday, March 17, 2022
// Task 03 - Clock App
// by\ Wael Ramzy Mohamed, waelramzymohamed@gmail.com
//*************************************************************

import 'package:clockapp/screens/layout_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Clock App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomeLayout(),
    );
  }
}
