import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_timer/custom_timer.dart';

class CountDown_Screen extends StatefulWidget {
  const CountDown_Screen({Key? key}) : super(key: key);

  @override
  State<CountDown_Screen> createState() => _CountDown_ScreenState();
}

class _CountDown_ScreenState extends State<CountDown_Screen> {
  final CustomTimerController _controller = CustomTimerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTimer(
              controller: _controller,
              begin: const Duration(days: 1),
              end: const Duration(),
              builder: (time) {
                return Text(
                    "${time.hours}:${time.minutes}:${time.seconds}.${time.milliseconds}",
                    style: TextStyle(fontSize: 24.0));
              }),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundedButton(
                text: "Start",
                color: Colors.green,
                onPressed: () => _controller.start(),
              ),
              RoundedButton(
                text: "Pause",
                color: Colors.blue,
                onPressed: () => _controller.pause(),
              ),
              RoundedButton(
                text: "Reset",
                color: Colors.red,
                onPressed: () => _controller.reset(),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onPressed;

  RoundedButton({required this.text, required this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text, style: TextStyle(color: Colors.white)),
      style: TextButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
      onPressed: onPressed,
    );
  }
}