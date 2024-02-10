import 'package:flutter/material.dart';
import 'package:newsapp/Models/news_model.dart';
import 'package:newsapp/Services/get_news_related_to_specific_category.dart';
import 'package:newsapp/Widgets/vertical_card_list.dart';
import 'package:newsapp/Widgets/show_error_message.dart';
import 'package:newsapp/Widgets/show_progress_indicator.dart';

var futureDataforSearchView;

class NewsListViewBuilderForSearchView extends StatefulWidget {
  const NewsListViewBuilderForSearchView({super.key, required this.text});
  final String text;

  @override
  State<NewsListViewBuilderForSearchView> createState() =>
      _NewsListViewBuilderForSearchView();
}

class _NewsListViewBuilderForSearchView
    extends State<NewsListViewBuilderForSearchView> {
  List<NewsModel> articles = [];

  @override
  void initState() {
    super.initState();
    futureDataforSearchView =
        GetNewsRelatedToSpecificCategory().getSearchedNews(q: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: futureDataforSearchView,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return VerticalCardList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const ShowErrorMessage();
          } else {
            return const ShowProgressIndicator();
          }
        });
  }
}
