import 'dart:convert';

import 'package:internapp/model/article_model.dart';
import 'package:http/http.dart';



class ApiService {
 
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=bitcoin&apiKey=d394960d6d364a9eacb07e25ed5d5e76";

 

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    //first of all let's check that we got a 200 statu code: this mean that the request was a succes
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
