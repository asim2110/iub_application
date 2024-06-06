import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color buttonColor;
  final Color textColor; // Added textColor property

  CustomButton({
    required this.text,
    required this.onPressed,
    this.icon,
    this.buttonColor = const Color.fromARGB(255, 0, 48, 96),
    this.textColor = Colors.white, // Set default value
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Container(
          height: height * 0.07,
          width: width * 0.9,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(18.0),
            boxShadow: [],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  color: textColor,
                ),
                SizedBox(width: 8.0),
              ],
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
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
