import 'package:flutter/material.dart';
import 'package:test_questions_format/model/form-data.dart';

class SliderComponent extends StatefulWidget {
  final String _adjLeft;
  final String _adjRight;
  int _currentValue;

  SliderComponent(this._adjLeft, this._adjRight, this._currentValue);

  @override
  State<SliderComponent> createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget._adjLeft, style: TextStyle(fontSize: 14)),
        Slider(
            value: widget._currentValue.toDouble(),
            min: 0,
            max: 7,
            divisions: 7,
            label: "${widget._currentValue}",
            onChanged: (newValue) {
              setState(() {
                widget._currentValue = newValue.toInt();
              });
            }),
        Text(widget._adjRight, style: TextStyle(fontSize: 14))
      ],
    );
  }
}
