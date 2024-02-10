import 'package:flutter/material.dart';
import 'package:newsapp/Models/news_model.dart';
import 'package:newsapp/Views/news_from_browser_view.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key, required this.news});
  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, NewsFromBrowserView.id,
              arguments: news.url);
        },
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  color: Colors.grey,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(news.image))),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              news.baseTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              news.branchTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
