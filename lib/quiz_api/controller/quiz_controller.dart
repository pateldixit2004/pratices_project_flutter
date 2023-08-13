import 'package:get/get.dart';
import 'package:pratices_project_flutter/news_api/utiles/api_helper.dart';
import 'package:pratices_project_flutter/quiz_api/model/quiz_model.dart';
import 'package:pratices_project_flutter/quiz_api/utiles/api_helper.dart';

class QuizController extends GetxController
{

  Future<QuizModel> takeApi()
  async {
    QuizModel model=await Api_Helper.apiHelper.getApi();
    return model;
  }

  RxInt i=1.obs;
  RxBool j=false.obs;
  void changeI()
  {
    if(i<9)
      {
        i++;
      }
    else
      {
        j.value=true;
      }
  }
String? ans;
List<String> userList=[];

// String? result;
int result=0;

}