import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quiz_app/routes/router.gr.dart';
import 'package:quiz_app/service/api.dart';
import 'package:quiz_app/ui/Screens/CommonControllers/profile_controllers.dart';
import 'package:quiz_app/ui/Screens/CommonControllers/question_controller.dart';
import 'package:quiz_app/ui/common_widgets/appbar.dart';
import 'package:quiz_app/ui/common_widgets/default_card.dart';

import 'package:quiz_app/ui/utils/theme.dart';

import '../../common_widgets/alert_box.dart';
import '../CommonControllers/question_controller.dart';

class ChooseType extends StatelessWidget {
  ChooseType(
      {Key? key,
      required this.icon,
      required this.path,
      required this.ptype,
      this.ftype})
      : super(key: key);
  dynamic icon;
  String path;
  String? ptype = "PRACTICE";
  String? ftype = "FINAL";

  final QuestionControl questionController = Get.put(QuestionControl());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bgColor,
          appBar: quizAppBar(context: context, iconUrl: icon),
          body: Column(
            children: [
              const SizedBox(
                height: defaultPadding,
              ),
              Text("Select Type ",
                  style: Theme.of(context).primaryTextTheme.headline1),
              Expanded(
                  child: ListView(
                children: [
                  const SizedBox(
                    height: defaultPadding * 3,
                  ),
                  ChoiceCard(
                    imgPosY: -110,
                    imgeSrc: "assets/icons/Practice_test.svg",
                    cardtext: "Practice Test",
                    onpressed: () async {
                      String ptype = "PRACTICE";
                      questionController.questionApi =
                          await fetchQuestionsApi(path.toUpperCase(), ptype);
                      String paths = path.toUpperCase();
                      String ptypes = "PRACTICE";
                      print('path is ${path.toUpperCase()} and type is $ptype');
                      context.router.push(QuestionsScreen(
                        icon: icon,
                        path: paths,
                        isFinal: false,
                        ptype: ptypes,
                      ));
                    },
                  ),
                  const SizedBox(
                    height: defaultPadding * 3,
                  ),
                  ChoiceCard(
                    imgPosY: -110,
                    imgeSrc: "assets/icons/exam.svg",
                    cardtext: "Evalution Exam",
                    onpressed: () {
                      quizAlertBox(
                          context,
                          'Exam information',
                          "OK",
                          'hello you have 2 and half hours time to  finish the exam. are you ready to take exam ?',
                          path,
                          icon,
                          questionController,
                          true,
                          false);
                    },
                  ),
                  const SizedBox(
                    height: defaultPadding * 3,
                  ),
                ],
              )),
            ],
          )),
    );
  }
}
