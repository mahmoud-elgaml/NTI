import 'package:design_task/screens/task3/task3.dart';
import 'package:flutter/material.dart';

class CustomInfoBar extends StatelessWidget {
  const CustomInfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ),
          Text("Info", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Task3()));            },
            child: Text(
              'Done',
              style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}

