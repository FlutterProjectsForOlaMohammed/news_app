import 'package:flutter/material.dart';

class SearchViewAppBar extends StatelessWidget {
  const SearchViewAppBar({super.key, required this.text, required this.image});
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        image,
        width: 50,
        height: 50,
      ),
      const SizedBox(
        width: 15,
      ),
      Text("${text[0].toUpperCase()}" "${text.substring(1)}",
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
      const Text(" News ",
          style: TextStyle(
              color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold)),
    ]);
  }
}
