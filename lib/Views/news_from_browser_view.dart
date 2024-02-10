import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsFromBrowserView extends StatelessWidget {
  const NewsFromBrowserView({super.key});
  static const String id = 'NewsFromBrowser';

  @override
  Widget build(BuildContext context) {
    String url = ModalRoute.of(context)!.settings.arguments as String;
    final controller = WebViewController()..loadRequest(Uri.parse(url));

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 70, bottom: 16),
      child: Column(
        children: [Expanded(child: WebViewWidget(controller: controller))],
      ),
    ));
  }
}
