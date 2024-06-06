import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Utiils/custom_btn.dart';
import 'package:iub_application/Utiils/custom_txtfield.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';
import 'package:iub_application/Views/forgot_password.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  height: height * 0.1,
                ),
                Center(
                  child: Container(
                    height: height * 0.2,
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                CustomTxtfield(
                    hintText: "User Name",
                    inputType: TextInputType.name,
                    controller: namecontroller),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomTxtfield(
                    hintText: "Enter Password",
                    inputType: TextInputType.text,
                    isPassword: true,
                    controller: passwordcontroller),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Checkbox(
                      activeColor: Color.fromARGB(255, 229, 173, 50),
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 229, 173, 50),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.off((Forgot_Screen()));
                        },
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 229, 173, 50),
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomButton(
                  text: "Login",
                  onPressed: () {
                    Get.off((Dashboard()));
                  },
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CustomButton(
                  text: "Pay Challan Online",
                  onPressed: () {},
                  icon: Icons.payments,
                  buttonColor: Color.fromARGB(255, 229, 173, 50),
                  textColor: Colors.black,
                ),
              ],
            ),
          )),
    );
  }
}
