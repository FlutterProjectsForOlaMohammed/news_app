import 'package:flutter/material.dart';

class ShowErrorMessage extends StatelessWidget {
  const ShowErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Text(
          "OOPS there is an error , please try again ...",
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 104, 33, 28)),
        ),
      ),
    );
  }
}
