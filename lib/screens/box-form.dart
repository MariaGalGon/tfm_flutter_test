import 'package:flutter/material.dart';
import 'package:test_questions_format/components/box-button-component.dart';
import 'package:test_questions_format/model/form-data.dart';

class BoxForm extends StatefulWidget {
  const BoxForm({super.key});

  @override
  State<BoxForm> createState() => _BoxFormState();
}

class _BoxFormState extends State<BoxForm> {
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
            return BoxButtonComponent(adjectives[index].adjLeft,
                adjectives[index].adjRight, selectedAnswers[index]);
          },
        ))
      ],
    ));
  }
}
