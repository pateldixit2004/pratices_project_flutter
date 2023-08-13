import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pratices_project_flutter/news_api/controller/api_controller.dart';
import 'package:pratices_project_flutter/news_api/model/news_model.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiController controller=Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: FutureBuilder(builder: (context, snapshot) {
        if(snapshot.hasData){
          NewsModel? newsModel=snapshot.data;
          return ListView.builder(itemBuilder: (context, index) {

            return ListTile(
              leading: Text("${newsModel.articles![index].author}"),
              title: Text("${newsModel.articles![index].title}"),
            );
          },itemCount: newsModel!.articles!.length,);
        }
        else if(snapshot.hasError)
        {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },future: controller.loadApi()),
    ),);
  }
}
