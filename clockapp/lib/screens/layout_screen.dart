import 'package:clockapp/screens/alarm_screen.dart';
import 'package:clockapp/screens/clock_screen.dart';
import 'package:clockapp/screens/countdown_screen.dart';
import 'package:clockapp/screens/stopwatch_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Clock App'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Image.asset("assets/world_icon.png", height: 30,),
                child: const Text("Clock"),
              ),
              Tab(
                icon: Image.asset("assets/alarm_clock.png", height: 30,),
                child: const Text("Alarm"),
              ),
              Tab(
                icon: Image.asset("assets/timer_icon.png", height: 30,),
                child: const Text("Timer"),
              ),
              Tab(
                icon: Image.asset("assets/stopwatch_icon.png", height: 30,),
                child: const Text("StopWatch"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Clock_Screen(),
            Alarm_Screen(),
            CountDown_Screen(),
            StopWatch_Screen(),
          ],
        ),
      ),
    );
  }
}
