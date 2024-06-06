import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class CurrentEnrollment extends StatefulWidget {
  const CurrentEnrollment({super.key});

  @override
  State<CurrentEnrollment> createState() => _CurrentEnrollmentState();
}

class _CurrentEnrollmentState extends State<CurrentEnrollment> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
          'Current Enrollment',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 4.0,
                right: 4.0,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 20,
                shadowColor: Colors.white,
                child: Container(
                  height: height * 0.19,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        height: height * 0.03,
                        width: width,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.06,
                            ),
                            Text(
                              "Course Code:",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "ARIN-1105",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromARGB(255, 173, 168, 173)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        width: width,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.06,
                            ),
                            Text(
                              "Course Name:",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Human Computer Interaction",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromARGB(255, 173, 168, 173)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        width: width,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.06,
                            ),
                            Text(
                              "Teacher Name",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Ms.Malakia Jamshaid",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromARGB(255, 173, 168, 173)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        width: width,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.06,
                            ),
                            Text(
                              "Credit Hours",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromARGB(255, 173, 168, 173)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        width: width,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.06,
                            ),
                            Text(
                              "Status:",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 229, 173, 50),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Theory",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 229, 173, 50),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
