import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pratices_project_flutter/news_api/view/home_screen.dart';
import 'package:pratices_project_flutter/quiz_api/view/quiz_home_screen.dart';


void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/':(context) => HomeScreen()
        "/":(p0) => QuizHomeScreen(),
      },
    )
  );
}