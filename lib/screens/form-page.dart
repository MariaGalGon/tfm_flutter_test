import 'package:flutter/material.dart';
import 'package:test_questions_format/components/box-button-component.dart';
import 'package:test_questions_format/components/radio-component.dart';
import 'package:test_questions_format/components/radio-label-component.dart';
import 'package:test_questions_format/components/slider-component.dart';
import 'package:test_questions_format/components/slider-marked-component.dart';
import 'package:test_questions_format/model/form-data.dart';

class FormPage extends StatelessWidget {
  List<int> selectedAnswers =
      List<int>.generate(adjectives.length, (index) => 0);
  List<int> selectedAnswersSlider =
      List<int>.generate(adjectives.length, (index) => 4);

  @override
  Widget build(BuildContext context) {
    String questionType = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(questionType),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white)),
        backgroundColor: Color.fromRGBO(0, 97, 164, 1),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: adjectives.length,
          separatorBuilder: (context, index) => Divider(height: 0.5),
          itemBuilder: (BuildContext context, int index) {
            switch (questionType) {
              case "radio-label":
                return RadioLabelComponent(adjectives[index].adjLeft,
                    adjectives[index].adjRight, selectedAnswers[index]);
              case "radio":
                return RadioComponent(adjectives[index].adjLeft,
                    adjectives[index].adjRight, selectedAnswers[index]);
              case "box":
                return BoxButtonComponent(adjectives[index].adjLeft,
                    adjectives[index].adjRight, selectedAnswers[index]);
              case "slider-label-A":
                return SliderComponent(adjectives[index].adjLeft,
                    adjectives[index].adjRight, selectedAnswersSlider[index]);
              case "slider-label-B":
                return SliderMarkedComponent(adjectives[index].adjLeft,
                    adjectives[index].adjRight, selectedAnswersSlider[index]);
            }
          },
        ),
      ),
    );
  }

  String getTitle(String type) {
    String appBarTitle = "";

    switch (type) {
      case "radio-label":
        appBarTitle = "Botón A con etiqueta";
      case "radio":
        appBarTitle = "Botón A";
      case "box":
        appBarTitle = "Botón B";
      case "slider-label-A":
        appBarTitle = "Slider A con etiqueta";
      case "slider-label-B":
        appBarTitle = "Slider B con etiqueta";
    }

    return appBarTitle;
  }
}
