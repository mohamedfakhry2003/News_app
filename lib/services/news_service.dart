import 'package:dio/dio.dart';
import 'package:news_app/models/article.dart';

class NewsService {
  getNews() async {
    final dio = Dio();
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=97281a5238b84e97b2e14eed2ea756bf&category=general");
    Map<String, dynamic> jsonData = await response.data;
    List<dynamic> articles = await jsonData["articles"];
    List<Article> news = [];

    for (var article in articles) {
      news.add(Article(
          title: article["title"],
          image: article["urlToImage"],
          description: article["description"]));
    }
  }
}
