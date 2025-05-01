import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://ts3.mm.bing.net/th?id=OIP.Mnw6f_8t09h9rSL8LT21nQAAAA&pid=15.1',
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Flutter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            Text(
              'mobile app framework',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
