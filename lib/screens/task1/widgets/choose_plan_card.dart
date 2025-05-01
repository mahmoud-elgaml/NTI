import 'package:flutter/material.dart';

class ChoosePlanCard extends StatelessWidget {
  const ChoosePlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: EdgeInsets.only(top: 50),
      color: const Color.fromARGB(255, 255, 251, 251),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Choose your\n subscription plan',
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              //
            ),
          ),
          SizedBox(height: 10),
          Text(
            '  And get a 7-day free trial',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
