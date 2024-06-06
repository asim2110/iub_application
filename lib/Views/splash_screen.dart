import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Views/DashBoard/dashboard.dart';
import 'package:iub_application/Views/forgot_password.dart';
import 'package:iub_application/Views/login_screen.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({super.key});

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.5).animate(_controller);
    _scaleAnimation.addListener(() {
      setState(() {});
    });
    Future.delayed(const Duration(seconds: 4), () {
      Get.off((Login_Screen()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        child: Column(
          children: [
            SizedBox(
              height: height * 0.3,
            ),
            Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 2000),
                height: height * 0.3 * _scaleAnimation.value,
                child: Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
