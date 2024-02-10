import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/news_list_view_builder_for_search_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.text});
  static const id = 'SeachedScreen';
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            text.trim(),
            textAlign: TextAlign.right,
            style: const TextStyle(
                color: Color.fromARGB(255, 144, 130, 3),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8, top: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  NewsListViewBuilderForSearchView(
                    text: text.trim(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
