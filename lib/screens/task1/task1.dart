import 'package:design_task/screens/task1/model/sub_model.dart';
import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
const  Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  
  
  final SubModel sub =  SubModel(
    title: 'Monthly',
    subTitle: '-53% discount',
    price: '\$10.90',
    duration: 'every month',
  );

  int selected = 1 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Radio(value: 0, groupValue: selected, onChanged: (value) {
                    setState(() {
                   selected = value!;

                    });
                  },
                  activeColor: Colors.blue,

                  //
                  ),
                  title: Text(sub.title),
                  titleTextStyle: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Text(
                    sub.subTitle,
                    style: TextStyle(fontSize: 14, color: Colors.blueAccent),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        sub.price,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        sub.duration,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
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
