import 'package:flutter/material.dart';

class Alarm_Screen extends StatefulWidget {
  const Alarm_Screen({Key? key}) : super(key: key);

  @override
  State<Alarm_Screen> createState() => _Alarm_ScreenState();
}

class _Alarm_ScreenState extends State<Alarm_Screen> {
  String? dateValue;
  String? timeValue;
  List dateList = [];
  List timeList = [];

  void addToLists() {
    dateList.add(dateValue);
    timeList.add(timeValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showDateDialog().then((value) {
            setState(() {
              dateValue = value.toString();
              //print(dateValue);
            });
          });
          await showTimeDialog().then((value) {
            setState(() {
              timeValue = value.toString();
              //print(timeValue);
            });
          });
          addToLists();
        },
        child: const Icon(Icons.add),
      ),
      body: dateList.length < 1
          ? const Center(
              child: Text("No alarm defined.",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.purpleAccent)),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return buildItem(dateList[index], timeList[index]);
              },
              itemCount: dateList.length,
            ),
    );
  }

  Widget buildItem(String dateParm, String timeParm) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.label,
                        color: Colors.grey,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Alarm',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    timeParm,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    dateParm,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                  Switch(
                    onChanged: (bool value) {},
                    value: true,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String?> showDateDialog() async {
    var date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    return date.toString().substring(0, 10);
  }

  Future<String?> showTimeDialog() async {
    var time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    var localization = MaterialLocalizations.of(context);
    localization.formatTimeOfDay(time!).toString();
    return localization.formatTimeOfDay(time).toString();
  }
}
