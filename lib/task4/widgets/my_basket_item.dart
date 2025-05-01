import 'package:flutter/material.dart';

class MyBasketItem extends StatelessWidget {
  final String name;
  final int num;
  final double price;
  const MyBasketItem({super.key, required this.name, required this.num, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text(name),
              subtitle: Text('$num packs'),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.purple,
                ),
                child: Image.asset('assets/logo.jpeg', fit: BoxFit.fill),
              ),
            ),
          ),
          Text('$price L.E'),
        ],
      ),
    );
  }
}
