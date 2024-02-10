import 'package:flutter/material.dart';

class ShowProgressIndicator extends StatelessWidget {
  const ShowProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
          child: CircularProgressIndicator(
        color: Colors.yellow,
      )),
    );
  }
}
