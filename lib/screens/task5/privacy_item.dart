import 'package:flutter/material.dart';

class PrivacyItem extends StatelessWidget {
  final String title;
  final String sub;
  final Widget widget;
  const PrivacyItem({super.key, required this.title, required this.sub, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 4),
                Text(
                  sub,
                  style: const TextStyle(color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
