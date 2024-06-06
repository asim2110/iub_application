import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final List<DataRow> _rows = [
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Name'),
        ),
      ),
      DataCell(Text('Muhammad Ali')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Email'),
        ),
      ),
      DataCell(Text('ali@example.com')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Phone'),
        ),
      ),
      DataCell(Text('+9230987654')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Address'),
        ),
      ),
      DataCell(Text('Bahawalpur Punjab')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('CINC'),
        ),
      ),
      DataCell(Text('31204_3122655_1')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Email'),
        ),
      ),
      DataCell(Text('SM0300WD005')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Gender'),
        ),
      ),
      DataCell(Text('Male')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Reg.No'),
        ),
      ),
      DataCell(Text('SM0300WD005')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('Depart'),
        ),
      ),
      DataCell(Text('Software Engineering')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('ETC'),
        ),
      ),
      DataCell(Text('ETC')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('ETC'),
        ),
      ),
      DataCell(Text('ETC')),
    ]),
    DataRow(cells: [
      DataCell(
        Container(
          child: Text('ETC'),
        ),
      ),
      DataCell(Text('ETC')),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "My Profile",
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 48, 96),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.off((Dashboard()));
          },
        ),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 6, 42, 79),
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage('assets/logo.png'),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const Text(
                "Personal & Academic Information",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 6, 42, 79),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                child: Container(
                  width: width * 0.86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: DataTable(
                    columns: const [
                      DataColumn(
                        label: Text(
                          'Field',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Value',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                    rows: _rows,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
