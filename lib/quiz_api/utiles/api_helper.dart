import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pratices_project_flutter/quiz_api/model/quiz_model.dart';
class Api_Helper
{
  static final Api_Helper apiHelper=Api_Helper._();
  Api_Helper._();

  Future<QuizModel> getApi()
  async {
    String link="https://opentdb.com/api.php?amount=10&category=27&difficulty=medium&type=multiple";
    var responce=await http.get(Uri.parse(link));
    var json=jsonDecode(responce.body);
    QuizModel model=QuizModel.fromJson(json);
    return model;
  }
}