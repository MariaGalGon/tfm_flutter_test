import 'package:flutter/material.dart';
import 'package:test_questions_format/components/slider-component.dart';
import 'package:test_questions_format/model/form-data.dart';

class SliderForm extends StatefulWidget {
  @override
  State<SliderForm> createState() => _SliderFormState();
}

class _SliderFormState extends State<SliderForm> {
  List<int> selectedAnswers =
      List<int>.generate(adjectives.length, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: ListView.builder(
          shrinkWrap: true,
          itemCount: adjectives.length,
          itemBuilder: (BuildContext context, int index) {
            return SliderComponent(adjectives[index].adjLeft,
                adjectives[index].adjRight, selectedAnswers[index]);
          },
        ))
      ],
    ));
  }
}
