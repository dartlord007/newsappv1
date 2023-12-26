import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsappv1/models/ArticleModel.dart';

class ApiService {
  final endPointUrl =
     Uri.parse("https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=a90b65f65157400285a68cb23e2c286e");

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
