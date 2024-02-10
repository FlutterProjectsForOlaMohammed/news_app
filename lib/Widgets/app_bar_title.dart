import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        children: [
          TextSpan(text: 'News', style: TextStyle(color: Colors.black)),
          TextSpan(
            children: [
              TextSpan(text: 'Cloud', style: TextStyle(color: Colors.yellow))
            ],
          ),
        ],
      ),
    );
  }
}
