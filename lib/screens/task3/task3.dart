import 'package:design_task/task4/my_basket.dart';
import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 190, 225, 253),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                    child: Icon(Icons.check_rounded, size: 80, color: Colors.white, weight: 32.0),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Congratulations!!!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Your order have been taken and \n is being attended to',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text('Track Order', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 40),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.orange),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyBasket()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 30.0,vertical: 10.0),
                  child: Text('Continue Shopping'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
