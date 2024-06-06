import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Utiils/custom_btn.dart';
import 'package:iub_application/Utiils/custom_txtfield.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';

class Update_Password extends StatefulWidget {
  const Update_Password({super.key});

  @override
  State<Update_Password> createState() => _Update_PasswordState();
}

class _Update_PasswordState extends State<Update_Password> {
  final TextEditingController oldcontroller = TextEditingController();
  final TextEditingController newcontroller = TextEditingController();
  final TextEditingController confirmcontroller = TextEditingController();

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
                    hintText: "New Password",
                    inputType: TextInputType.visiblePassword,
                    controller: oldcontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTxtfield(
                    hintText: "Old Password",
                    inputType: TextInputType.visiblePassword,
                    controller: newcontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                CustomTxtfield(
                    hintText: "Confirm Password",
                    inputType: TextInputType.emailAddress,
                    controller: confirmcontroller),
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.08,
                    ),
                    Text(
                      "Important Note :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.12,
                  width: width * 0.80,
                  child: Text(
                    "Your password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character.",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                CustomButton(
                  text: "Submit",
                  onPressed: () {},
                ),
              ],
            ),
          )),
    );
  }
}
