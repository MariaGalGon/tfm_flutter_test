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
      List<int>.generate(adjectives.length, (index) => 1);

  @override
  Widget build(BuildContext context) {
    String questionType = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Center(
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
}
