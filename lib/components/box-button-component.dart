import 'package:flutter/material.dart';
import 'package:test_questions_format/components/box-button.dart';

class BoxButtonComponent extends StatefulWidget {
  final String _adjLeft;
  final String _adjRight;
  int _currentValue;

  BoxButtonComponent(this._adjLeft, this._adjRight, this._currentValue);

  @override
  State<BoxButtonComponent> createState() => _BoxButtonComponentState();
}

class _BoxButtonComponentState extends State<BoxButtonComponent> {
  late ValueChanged<int> _valueChanged;

  @override
  void initState() {
    super.initState();

    _valueChanged = (value) {
      widget._currentValue = value;
    };
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget._adjLeft, style: TextStyle(fontSize: 14)),
        BoxButton(1, _valueChanged),
        BoxButton(2, _valueChanged),
        BoxButton(3, _valueChanged),
        BoxButton(4, _valueChanged),
        BoxButton(5, _valueChanged),
        BoxButton(6, _valueChanged),
        BoxButton(7, _valueChanged),
        Text(widget._adjRight, style: TextStyle(fontSize: 14))
      ],
    );
  }
}