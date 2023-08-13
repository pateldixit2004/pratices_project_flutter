import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pratices_project_flutter/quiz_api/controller/quiz_controller.dart';
import 'package:pratices_project_flutter/quiz_api/model/quiz_model.dart';

class QuizHomeScreen extends StatefulWidget {
  const QuizHomeScreen({super.key});

  @override
  State<QuizHomeScreen> createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen> {
  QuizController controller = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("${snapshot.error}");
              } else if (snapshot.hasData) {
                QuizModel? model = snapshot.data;
                // List<String> l1 = model!.results![controller.i.value].correctAnswer;
                // List<String> l1 =[
                //   "${model!.results![0].incorrectAnswers!}",
                //   "${model!.results![1].incorrectAnswers!}",
                //   "${model!.results![2].incorrectAnswers!}",
                // ];
                // l1.add(model!.results![5].correctAnswer!);
                // l1.shuffle();
                return Column(
                  children: [
                    // Obx(() =>  Text("${controller.result.value++}")),
                    Obx(
                      () => Container(
                        height: 70,
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Colors.purpleAccent,
                            Colors.redAccent,
                          ],
                        )),
                        child: Text("${controller.i.value}=="
                            "${model!.results![controller.i.value].question}"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.ans =
                            model!.results![controller.i.value].correctAnswer;
                        print(
                            "--------------------------------------------------------${controller.ans}");
                        // controller.userList.add(controller.ans!);
                        // controller.ans!=controller.userList;
                        //
                        // print("--------------------------------------------------------${controller.userList}");
                        // print("--------------------------------------------------------+++++++++++++${controller.ans}");

                        if (controller.ans ==
                            model.results![controller.i.value].correctAnswer) {
                          print(
                              "------------------********************-------------------------+++++++++++++${controller.ans}");
                          controller.result++;
                          controller.changeI();
                          // controller.result=int.parse("${controller.ans}");
                          // controller.result=controller.ans;
                          // print("------------------********************-------------------------////////////////////${controller.result}");
                        }

                        controller.userList.clear();
                      },
                      child: Obx(
                        () => Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.purpleAccent),
                          child: Text(
                              "${model!.results![controller.i.value].correctAnswer}==="),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.ans = model!
                            .results![controller.i.value].incorrectAnswers![0];
                        print(
                            "--------------------------------------------------------${controller.ans}");
                        // controller.userList.add(controller.ans!);
                        // controller.ans!=controller.userList;
                        //
                        // print("--------------------------------------------------------${controller.userList}");
                        // print("--------------------------------------------------------+++++++++++++${controller.ans}");

                        if (controller.ans ==
                            model.results![controller.i.value]
                                .incorrectAnswers![0]) {
                          print(
                              "------------------********************-------------------------+++++++++++++${controller.ans}");
                          controller.result--;
                          controller.changeI();
                        }
                        controller.userList.clear();
                      },
                      child: Obx(
                        () => Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.purpleAccent),
                          child: Text(
                              "${model!.results![controller.i.value].incorrectAnswers![0]}"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.ans = model!
                            .results![controller.i.value].incorrectAnswers![1];
                        print(
                            "--------------------------------------------------------${controller.ans}");
                        // controller.userList.add(controller.ans!);
                        // controller.ans!=controller.userList;
                        //
                        // print("--------------------------------------------------------${controller.userList}");
                        // print("--------------------------------------------------------+++++++++++++${controller.ans}");

                        if (controller.ans ==
                            model.results![controller.i.value]
                                .incorrectAnswers![1]) {
                          print(
                              "------------------********************-------------------------+++++++++++++${controller.ans}");
                          controller.result--;
                          controller.changeI();
                        }
                        controller.userList.clear();
                      },
                      child: Obx(
                        () => Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.purpleAccent),
                          child: Text(
                              "${model!.results![controller.i.value].incorrectAnswers![1]}"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.ans = model!
                            .results![controller.i.value].incorrectAnswers![2];
                        print(
                            "--------------------------------------------------------${controller.ans}");
                        // controller.userList.add(controller.ans!);
                        // controller.ans!=controller.userList;
                        //
                        // print("--------------------------------------------------------${controller.userList}");
                        // print("--------------------------------------------------------+++++++++++++${controller.ans}");

                        if (controller.ans ==
                            model.results![controller.i.value]
                                .incorrectAnswers![2]) {
                          print(
                              "------------------********************-------------------------+++++++++++++${controller.ans}");
                          controller.result--;
                          controller.changeI();
                        }
                        controller.userList.clear();
                      },
                      child: Obx(
                        () => Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.purpleAccent),
                          child: Text(
                              "${model!.results![controller.i.value].incorrectAnswers![2]}"),
                        ),
                      ),
                    ),

                    Obx(
                      () => Visibility(
                        visible: controller.i.value > 8 ? true : false,
                        child: TextButton(
                          onPressed: () {
                            // if(controller.ans==model!.results![controller.i.value].correctAnswer)
                            // {
                            //   print("------------------********************-------------------------+++++++++++++${controller.ans}");
                            //   controller.result++;
                            //   // controller.changeI();
                            //   // controller.result=int.parse("${controller.ans}");
                            //   // controller.result=controller.ans;
                            //   // print("------------------********************-------------------------////////////////////${controller.result}");
                            //
                            // }

                            Get.dialog(
                              Dialog(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    // Text("${controller.result.value}"),
                                    Container(height: 100,alignment:Alignment.center,child: Text("Result=${controller.result}")),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text("Sumit"),
                        ),
                      ),
                    ),
                    // Text("${controller.ans}"),
                  ],
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            future: controller.takeApi()),
      ),
    );
  }

  Column buildColumn(QuizModel model) {
    return Column(
      children: [
        // Obx(() =>  Text("${controller.result.value++}")),
        Obx(
          () => Container(
            height: 70,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.purpleAccent,
                Colors.redAccent,
              ],
            )),
            child: Text("${controller.i.value}=="
                "${model!.results![controller.i.value].question}"),
          ),
        ),
        InkWell(
          onTap: () {
            controller.ans = model!.results![controller.i.value].correctAnswer;
            print(
                "--------------------------------------------------------${controller.ans}");
            // controller.userList.add(controller.ans!);
            // controller.ans!=controller.userList;
            //
            // print("--------------------------------------------------------${controller.userList}");
            // print("--------------------------------------------------------+++++++++++++${controller.ans}");

            if (controller.ans ==
                model.results![controller.i.value].correctAnswer) {
              print(
                  "------------------********************-------------------------+++++++++++++${controller.ans}");
              controller.result++;
              controller.changeI();
              // controller.result=int.parse("${controller.ans}");
              // controller.result=controller.ans;
              // print("------------------********************-------------------------////////////////////${controller.result}");
            }

            controller.userList.clear();
          },
          child: Obx(
            () => Container(
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: Text(
                  "${model!.results![controller.i.value].correctAnswer}==="),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            controller.ans =
                model!.results![controller.i.value].incorrectAnswers![0];
            print(
                "--------------------------------------------------------${controller.ans}");
            // controller.userList.add(controller.ans!);
            // controller.ans!=controller.userList;
            //
            // print("--------------------------------------------------------${controller.userList}");
            // print("--------------------------------------------------------+++++++++++++${controller.ans}");

            if (controller.ans ==
                model.results![controller.i.value].incorrectAnswers![0]) {
              print(
                  "------------------********************-------------------------+++++++++++++${controller.ans}");
              controller.result--;
              controller.changeI();
            }
            controller.userList.clear();
          },
          child: Obx(
            () => Container(
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: Text(
                  "${model!.results![controller.i.value].incorrectAnswers![0]}"),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            controller.ans =
                model!.results![controller.i.value].incorrectAnswers![1];
            print(
                "--------------------------------------------------------${controller.ans}");
            // controller.userList.add(controller.ans!);
            // controller.ans!=controller.userList;
            //
            // print("--------------------------------------------------------${controller.userList}");
            // print("--------------------------------------------------------+++++++++++++${controller.ans}");

            if (controller.ans ==
                model.results![controller.i.value].incorrectAnswers![1]) {
              print(
                  "------------------********************-------------------------+++++++++++++${controller.ans}");
              controller.result--;
              controller.changeI();
            }
            controller.userList.clear();
          },
          child: Obx(
            () => Container(
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: Text(
                  "${model!.results![controller.i.value].incorrectAnswers![1]}"),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            controller.ans =
                model!.results![controller.i.value].incorrectAnswers![2];
            print(
                "--------------------------------------------------------${controller.ans}");
            // controller.userList.add(controller.ans!);
            // controller.ans!=controller.userList;
            //
            // print("--------------------------------------------------------${controller.userList}");
            // print("--------------------------------------------------------+++++++++++++${controller.ans}");

            if (controller.ans ==
                model.results![controller.i.value].incorrectAnswers![2]) {
              print(
                  "------------------********************-------------------------+++++++++++++${controller.ans}");
              controller.result--;
              controller.changeI();
            }
            controller.userList.clear();
          },
          child: Obx(
            () => Container(
              height: 30,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: Text(
                  "${model!.results![controller.i.value].incorrectAnswers![2]}"),
            ),
          ),
        ),

        Obx(
          () => Visibility(
            visible: controller.i.value > 8 ? true : false,
            child: TextButton(
              onPressed: () {
                // if(controller.ans==model!.results![controller.i.value].correctAnswer)
                // {
                //   print("------------------********************-------------------------+++++++++++++${controller.ans}");
                //   controller.result++;
                //   // controller.changeI();
                //   // controller.result=int.parse("${controller.ans}");
                //   // controller.result=controller.ans;
                //   // print("------------------********************-------------------------////////////////////${controller.result}");
                //
                // }

                Get.dialog(
                  Dialog(
                    child: Column(
                      children: [
                        // Text("${controller.result.value}"),
                        Text("${controller.result}"),
                      ],
                    ),
                  ),
                );
              },
              child: Text("Sumit"),
            ),
          ),
        ),
        // Text("${controller.ans}"),
      ],
    );
  }
}
