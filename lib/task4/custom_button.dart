import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final void Function()? onPressed;
  final String name;
  final Color color;
  const CustomButton({super.key, required this.width, required this.name, required this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(name, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
