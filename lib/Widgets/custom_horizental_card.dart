import 'package:flutter/material.dart';
import 'package:newsapp/Views/show_categoried_news_view.dart';

class HorizentalCard extends StatelessWidget {
  const HorizentalCard(
      {super.key,
      required this.text,
      required this.image,
      required this.onTapped});

  final String text, image;
  final VoidCallback onTapped;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ShowCategoriedNewsView(
                text: text.toLowerCase(), image: image);
          }));
        },
        child: Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    fontStyle: FontStyle.italic),
              ),
            )),
      ),
    );
  }
}
