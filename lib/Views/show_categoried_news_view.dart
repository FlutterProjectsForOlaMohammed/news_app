import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/news_list_view_builder.dart';
import 'package:newsapp/Widgets/search_view_app_bar.dart';

class ShowCategoriedNewsView extends StatelessWidget {
  const ShowCategoriedNewsView(
      {super.key, required this.text, required this.image});
  static const String id = 'ShowCategoriedNews';
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: SearchViewAppBar(
            image: image,
            text: text,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(specific: text),
          ],
        ),
      ),
    );
  }
}
