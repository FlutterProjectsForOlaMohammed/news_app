import 'package:flutter/material.dart';
import 'package:newsapp/constants.dart';
import 'custom_horizental_card.dart';

class HorizentalCardList extends StatelessWidget {
  const HorizentalCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: cardsContent.length,
        itemBuilder: (context, index) {
          return cardsContent
              .map((e) => HorizentalCard(
                    text: e.text,
                    image: e.image,
                    onTapped: () {},
                  ))
              .toList()[index];
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
