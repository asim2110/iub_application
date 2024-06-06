import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Utiils/custom_btn.dart';
import 'package:iub_application/Utiils/custom_txtfield.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  final TextEditingController fnamecontroller = TextEditingController();
  final TextEditingController lnamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController numbercontroller = TextEditingController();
  final TextEditingController cinccontroller = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
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
      ),
      body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 1, 35, 70),
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
                  child: Container(
                    height: height * 0.2,
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CustomTxtfield(
                    hintText: "First Name",
                    inputType: TextInputType.name,
                    controller: fnamecontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTxtfield(
                    hintText: "Last Name",
                    inputType: TextInputType.name,
                    controller: lnamecontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTxtfield(
                    hintText: "EmailAddress",
                    inputType: TextInputType.emailAddress,
                    controller: emailcontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTxtfield(
                    hintText: "Ph#Number",
                    inputType: TextInputType.number,
                    controller: numbercontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTxtfield(
                    hintText: "CNIC",
                    inputType: TextInputType.number,
                    controller: cinccontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomButton(
                  text: "Update",
                  onPressed: () {},
                ),
                SizedBox(
                  height: height * 0.015,
                ),
              ],
            ),
          )),
    );
  }
}
