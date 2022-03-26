import 'package:flutter/material.dart';

class Clock_Screen extends StatefulWidget {
  const Clock_Screen({Key? key}) : super(key: key);

  @override
  State<Clock_Screen> createState() => _Clock_ScreenState();
}

class _Clock_ScreenState extends State<Clock_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateTime.now().hour > 12 ? "Good Morning" : "Good evening",
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
                (DateTime.now().hour > 12 ? '${DateTime.now().hour - 12}' : '${DateTime.now().hour}')+
                 ':${DateTime.now().minute}:${DateTime.now().second}' +
                  (DateTime.now().hour>12?' PM ':' AM ') +
                  '- ${DateTime.now().timeZoneName}',
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  color: Colors.purpleAccent),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  color: Colors.purpleAccent),
            ),
          ],
        ),
      ),
    );
  }
}
