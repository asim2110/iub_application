import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class FeeVoucher extends StatefulWidget {
  const FeeVoucher({super.key});

  @override
  State<FeeVoucher> createState() => _FeeVoucherState();
}

class _FeeVoucherState extends State<FeeVoucher> {
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
          'Fee Voucher',
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
                  height: height * 0.28,
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
                              "Title:",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Fall 2023 Semester Fee",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 173, 168, 173),
                              ),
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
                              "App No:",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "1234598763",
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
                              "Challan No:",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "321654789483",
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
                              "Due Date:",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "2023-06-09",
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
                              "Amount:",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "37,580 (PKR)",
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
                                  color: Colors.green),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.056,
                        width: width * 0.35,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 47, 95),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Download",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 229, 173, 50),
                            ),
                          ),
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
