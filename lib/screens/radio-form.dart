import 'package:flutter/material.dart';
import 'package:test_questions_format/components/radio-component.dart';
import 'package:test_questions_format/model/form-data.dart';

class RadioForm extends StatefulWidget {
  @override
  State<RadioForm> createState() => _RadioFormState();
}

class _RadioFormState extends State<RadioForm> {
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
              return RadioComponent(adjectives[index].adjLeft,
                  adjectives[index].adjRight, selectedAnswers[index]);
            },
          ))
        ],
      ),
    );
  }
}
