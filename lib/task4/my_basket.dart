import 'package:design_task/screens/task5/whatsapp_privacy.dart';
import 'package:design_task/task4/custom_button.dart';
import 'package:design_task/task4/widgets/my_basket_item.dart';
import 'package:flutter/material.dart';

class MyBasket extends StatelessWidget {
  const MyBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: const Color.fromARGB(255, 236, 144, 7),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () => Navigator.pop(context),
                          ),
                          const Text('Go back'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    'My Basket',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const MyBasketItem(name: 'Quinoa fruit salad', price: 20000, num: 4),
          const Divider(),
          const MyBasketItem(name: 'Melon fruit salad', price: 20000, num: 2),
          const Divider(),
          const MyBasketItem(name: 'Tropical fruit salad', price: 20000, num: 6),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                const Expanded(child: ListTile(title: Text('Total'), subtitle: Text('60000 L.E'))),
                CustomButton(
                  name: 'Track order',
                  width: 250,
                  color: Colors.orange,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Task5()));
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
