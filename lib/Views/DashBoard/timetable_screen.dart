//
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class TimetableScreen extends StatefulWidget {
  @override
  State<TimetableScreen> createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen> {
  final List<String> weekdays = [
    "MONDAY",
    "TUESDAY",
    "WEDNESDAY",
    "THURSDAY",
    "FRIDAY",
    "SATURDAY"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: weekdays.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 48, 96),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Get.off((Dashboard()));
              }),
          title: Text(
            'Timetable',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            isScrollable: true,
            unselectedLabelColor: Colors.white38,
            indicatorColor: Colors.white,
            tabs: weekdays.map((day) => Tab(text: day)).toList(),
          ),
        ),
        body: TabBarView(
          children: weekdays.map((day) {
            return Center(
              child: Text(
                'Schedule for $day',
                style: TextStyle(fontSize: 20),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
