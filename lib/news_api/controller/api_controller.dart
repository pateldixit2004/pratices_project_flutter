import 'package:get/get.dart';
import 'package:pratices_project_flutter/news_api/model/news_model.dart';
import 'package:pratices_project_flutter/news_api/utiles/api_helper.dart';

class ApiController extends GetxController {
  Future<NewsModel> loadApi() async {
    NewsModel newsModel = await ApiHelper.apihelper.getApi();
    return newsModel;
  }
}
