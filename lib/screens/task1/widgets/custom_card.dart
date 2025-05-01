import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.duration,
  });
  final String title;
  final String subTitle;
  final String price;
  final String duration;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Radio(
          value: 0,
          groupValue: 1,
          onChanged: (value) {},
          activeColor: Colors.blue,

          //
        ),
        title: Text(title),
        titleTextStyle: TextStyle(fontSize: 22,
         color: Colors.black,
          fontWeight: FontWeight.bold,
          //
          ),
        subtitle: Text(subTitle, style: TextStyle(fontSize: 14, 
        color: Colors.blueAccent,
        fontWeight: FontWeight.w500,
          //
        //
        ),
        ),
        trailing: Column(
          children: [
            Text(
              price,
              style: TextStyle(fontSize: 18, color: Colors.black, 
              fontWeight: FontWeight.w900,
              
              ),
            ),
            Text(duration, style: TextStyle(fontSize: 12, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
