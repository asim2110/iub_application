import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class AccountStatment extends StatefulWidget {
  const AccountStatment({super.key});

  @override
  State<AccountStatment> createState() => _AccountStatmentState();
}

class _AccountStatmentState extends State<AccountStatment> {
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
          'Account Statement',
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
                left: 7.0,
                right: 7.0,
              ),
              child: Container(
                height: height * 0.303,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Container(
                      height: height * 0.1,
                      width: width,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 48, 96),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            "Spring 2021 Tasting Services Fee",
                            style: TextStyle(
                                color: Color.fromARGB(255, 229, 173, 50),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Challan No: 1000652424",
                            style: TextStyle(
                                color: Color.fromARGB(255, 229, 173, 50),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.003,
                    ),
                    Container(
                      height: height * 0.095,
                      width: width,
                      color: const Color.fromARGB(255, 191, 219, 230),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Text(
                            "Amount Payble by Student",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 48, 96),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.006,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Text(
                                "Date:",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 48, 96),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "2021-08-24  20:22:08",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              Text(
                                "Amount:",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 48, 96),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "1000/-PKR",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.004,
                    ),
                    Container(
                      height: height * 0.093,
                      width: width,
                      color: const Color.fromARGB(255, 105, 240, 174),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.012,
                          ),
                          Text(
                            "PAID FROM: HBL BRANCH",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 48, 96),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.006,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Text(
                                "Date:",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 48, 96),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "2021-08-27  10:14:08",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              Text(
                                "Amount:",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 48, 96),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "1000/-PKR",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
