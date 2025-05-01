import 'package:design_task/screens/task2/widgets/custom_info_bar.dart';
import 'package:design_task/screens/task2/widgets/profile_list_tile.dart';
import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomInfoBar(),
              SizedBox(height: 16),
              ProfileListTile(),
              ListTile(
                title: Text('main'),
                subtitle: Text(
                  '+1 202 555 0181',
                  style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                title: Text('home'),
                subtitle: Text(
                  '+1 202 555 0181',
                  style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                title: Text('bio'),
                subtitle: Text(
                  'building beautiful, responsive mobile apps.',
                  style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                leading: Text('Notifications', style: TextStyle(fontSize: 14, color: Colors.black)),
                trailing: Row(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Enabeld',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
                  ],
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
