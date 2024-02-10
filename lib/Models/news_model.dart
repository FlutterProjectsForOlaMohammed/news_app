class NewsModel {
  String image, baseTitle, branchTitle, url;
  NewsModel(
      {required this.image,
      required this.baseTitle,
      required this.branchTitle,
      required this.url});

  factory NewsModel.fromJson(jsonData) {
    return NewsModel(
        image: jsonData['image'],
        baseTitle: jsonData['title'],
        branchTitle: jsonData['description'],
        url: jsonData['url']);
  }
}
