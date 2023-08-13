import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pratices_project_flutter/news_api/model/news_model.dart';
class ApiHelper
{
  static final apihelper=ApiHelper._();
  ApiHelper._();


  Future<NewsModel> getApi()
  async {
    String? link="https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=f6fbf52fdd074fa1bc643acc56a05978";
    var responce=await http.get(Uri.parse(link));
    var json=jsonDecode(responce.body);
    NewsModel newsModel=NewsModel.fromJSon(json);
    return newsModel;
  }
}