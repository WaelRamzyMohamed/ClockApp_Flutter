import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StopWatch_Screen extends StatefulWidget {
  const StopWatch_Screen({Key? key}) : super(key: key);

  @override
  State<StopWatch_Screen> createState() => _StopWatch_ScreenState();
}

class _StopWatch_ScreenState extends State<StopWatch_Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("This is StopWatch Screen."),
    );
  }
}
