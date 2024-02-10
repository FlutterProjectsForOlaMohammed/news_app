import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/show_error_message.dart';
import 'package:newsapp/Widgets/show_progress_indicator.dart';

import '../Models/news_model.dart';
import '../Services/get_news_related_to_specific_category.dart';
import 'Vertical_Card_List.dart';

var futureData;

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, this.specific = 'general'});
  final String specific;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilder();
}

class _NewsListViewBuilder extends State<NewsListViewBuilder> {
  List<NewsModel> articles = [];

  @override
  void initState() {
    super.initState();
    futureData = GetNewsRelatedToSpecificCategory()
        .getCategoiredNews(category: widget.specific);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: futureData,
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
