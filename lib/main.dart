import 'package:flutter/material.dart';
import 'package:newsapp/Views/home_view.dart';
import 'package:newsapp/Views/news_from_browser_view.dart';
import 'package:newsapp/Views/search_view.dart';
import 'package:newsapp/Views/show_categoried_news_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ShowCategoriedNewsView.id: (context) => const ShowCategoriedNewsView(
              text: '',
              image: '',
            ),
        'HomeScreen': (context) => const HomeView(),
        NewsFromBrowserView.id: (context) => const NewsFromBrowserView(),
        SearchView.id: (context) => const SearchView(
              text: "general",
            ),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomeScreen',
    );
  }
}
