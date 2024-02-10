import 'package:flutter/material.dart';
import 'package:newsapp/Models/news_model.dart';
import 'custom_vertical_card.dart';

class VerticalCardList extends StatelessWidget {
  const VerticalCardList({super.key, required this.articles});
  final List<NewsModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return VerticalCard(news: articles[index]);
        },
      ),
    );
  }
}
