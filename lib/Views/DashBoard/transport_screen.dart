import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class TransportScreen extends StatefulWidget {
  @override
  State<TransportScreen> createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {
  String? _selectedCourseLabel;
  final List<String> transport = [
    "STOP SCHEDULE",
    "BAHAWALPUR",
    "BAHAWALNAGAR",
    "RAHIMYARKHAN",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: transport.length,
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
            },
          ),
          title: Text(
            'Transport',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            isScrollable: true,
            unselectedLabelColor: Colors.white38,
            indicatorColor: Colors.white,
            tabs: transport.map((SCHEDULE) => Tab(text: SCHEDULE)).toList(),
          ),
        ),
        body: TabBarView(
          children: transport.map((SCHEDULE) {
            return Column(
              children: [
                if (SCHEDULE == "STOP SCHEDULE") ...[
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      openBottomSheet(context, (label) {
                        setState(() {
                          _selectedCourseLabel = label;
                        });
                      });
                    },
                    child: Container(
                      height: height * 0.065,
                      width: width * 0.88,
                      margin: EdgeInsets.only(top: 20), // margin for spacing
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: width * 0.06),
                          SizedBox(
                            width: width * 0.66,
                            child: Text(
                              _selectedCourseLabel ?? 'Select Department',
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 15,
                                color: Color.fromARGB(255, 0, 48, 96),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.04),
                          Icon(Icons.arrow_drop_down_outlined),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // spacing between widgets
                ],
                Expanded(
                  child: Center(
                    child: Text(
                      'Schedule for $SCHEDULE',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Future<void> openBottomSheet(
      BuildContext context, Function(String) onSelected) async {
    var courses = [
      ListItem(value: '2', label: 'Bahawalpur'),
      ListItem(value: '3', label: '1 Unit Chowk'),
      ListItem(value: '4', label: 'Uni chowk'),
      ListItem(value: '5', label: 'Dewan wali pulli'),
      ListItem(value: '6', label: 'Sadar pulli'),
      ListItem(value: '7', label: 'Main comp'),
      ListItem(value: '8', label: 'Out of city'),
      ListItem(value: '9', label: 'Khairpur Tamewali'),
    ];

    double screenHeight = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: screenHeight * 0.4,
          child: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(courses[index].label),
                onTap: () {
                  onSelected(courses[index].label);
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }
}

class ListItem {
  final String value;
  final String label;

  ListItem({required this.value, required this.label});
}
