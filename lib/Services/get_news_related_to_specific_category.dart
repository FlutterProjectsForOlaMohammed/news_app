import 'package:newsapp/Helper/Api.dart';
import 'package:newsapp/Models/news_model.dart';

String apiKey = 'f9280507ae0be1f95068b65a0a289772';
String baseUrl = 'https://gnews.io/api/v4';

class GetNewsRelatedToSpecificCategory {
  Map<String, dynamic> returnedData = {};
  List<NewsModel> news = [];

  Future<List<NewsModel>> getCategoiredNews({
    category = 'general',
  }) async {
    news = [];
    returnedData = {};
    returnedData = await Api().getRequest(
        "$baseUrl/top-headlines?apikey=$apiKey&lang=ar&category=$category");

    if (returnedData.containsKey('articles')) {
      for (int i = 0; i < returnedData['articles'].length; i++) {
        news.add(NewsModel.fromJson(returnedData['articles'][i]));
      }
    }
    return news;
  }

  Future<List<NewsModel>> getSearchedNews({
    required q,
  }) async {
    news = [];
    String nullable = 'title';
    returnedData = {};
    returnedData = await Api().getRequest(
        '$baseUrl/top-headlines?apikey=$apiKey&lang=ar&q=$q&nullable=$nullable');

    if (returnedData.containsKey('articles')) {
      for (int i = 0; i < returnedData['articles'].length; i++) {
        news.add(NewsModel.fromJson(returnedData['articles'][i]));
      }
    }
    return news;
  }
}
