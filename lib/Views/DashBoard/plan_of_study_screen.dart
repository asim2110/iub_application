import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class Plan_Of_Study extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Plan of Study',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
        children: [
          // Other widgets above the tab bar
          Expanded(
            child: DefaultTabController(
              length: 9, // Number of tabs
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    isScrollable: true, // Allow tabs to scroll horizontally
                    tabs: [
                      Tab(
                        text: ' All ',
                      ),
                      Tab(text: 'Semester 1'),
                      Tab(text: 'Semester 2'),
                      Tab(text: 'Semester 3'),
                      Tab(text: 'Semester 4'),
                      Tab(text: 'Semester 5'),
                      Tab(text: 'Semester 6'),
                      Tab(text: 'Semester 7'),
                      Tab(text: 'Semester 8'),
                    ],
                    labelStyle:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Contents for each tab
                        Center(child: Text('All Tab')),
                        Center(child: Text('Tab 1')),
                        Center(child: Text('Tab 2')),
                        Center(child: Text('Tab 3')),
                        Center(child: Text('Tab 4')),
                        Center(child: Text('Tab 5')),
                        Center(child: Text('Tab 6')),
                        Center(child: Text('Tab 7')),
                        Center(child: Text('Tab 8')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Other widgets below the tab bar
        ],
      ),
    );
  }
}
