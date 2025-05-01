import 'package:design_task/screens/task5/privacy_item.dart';
import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 100,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back, color: Colors.white),
                      const SizedBox(width: 40),
                      const Text(
                        'Privacy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Who can see my personal info',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const PrivacyItem(
                      title: 'Last seen and online',
                      sub: 'Everyone',
                      widget: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ),
                    const Divider(),
                    const PrivacyItem(
                      title: 'Profile photo',
                      sub: 'Everyone',
                      widget: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ),
                    const Divider(),
                    const PrivacyItem(
                      title: 'About',
                      sub: 'Everyone',
                      widget: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ),
                    const Divider(),
                    const PrivacyItem(
                      title: 'Read receipts',
                      sub:
                          'if turned off,you won\'t send or receive Read receipts.Read receipts are always sent for group chats',
                      widget: Checkbox(
                        value: true,
                        onChanged: null,
                        checkColor: Colors.white,
                        activeColor: Colors.green,
                      ),
                    ),
                    const Divider(),
                    const Text(
                      'Disappearing messages',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const PrivacyItem(
                      title: 'Default message timer',
                      sub: 'Off',
                      widget: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ),
                    const Divider(),
                    const PrivacyItem(
                      title: 'Groups',
                      sub: 'Everyone',
                      widget: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ),
                    const Divider(),
                    const PrivacyItem(
                      title: 'Blocked contacts',
                      sub: 'None',
                      widget: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
