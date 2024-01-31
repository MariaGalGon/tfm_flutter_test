import 'package:flutter/material.dart';

class RadioComponent extends StatefulWidget {
  final String _adjLeft;
  final String _adjRight;
  int _currentValue;

  RadioComponent(this._adjLeft, this._adjRight, this._currentValue);

  @override
  State<RadioComponent> createState() => _RadioComponentState();
}

class _RadioComponentState extends State<RadioComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Text(widget._adjLeft),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: Radio(
              value: 1,
              groupValue: widget._currentValue,
              onChanged: (newValue) {
                setState(() {
                  widget._currentValue = newValue!;
                });
              }),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: Radio(
              value: 2,
              groupValue: widget._currentValue,
              onChanged: (newValue) {
                setState(() {
                  widget._currentValue = newValue!;
                });
              }),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: Radio(
              value: 3,
              groupValue: widget._currentValue,
              onChanged: (newValue) {
                setState(() {
                  widget._currentValue = newValue!;
                });
              }),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: Radio(
              value: 4,
              groupValue: widget._currentValue,
              onChanged: (newValue) {
                setState(() {
                  widget._currentValue = newValue!;
                });
              }),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: Radio(
              value: 5,
              groupValue: widget._currentValue,
              onChanged: (newValue) {
                setState(() {
                  widget._currentValue = newValue!;
                });
              }),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: Radio(
              value: 6,
              groupValue: widget._currentValue,
              onChanged: (newValue) {
                setState(() {
                  widget._currentValue = newValue!;
                });
              }),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: Radio(
              value: 7,
              groupValue: widget._currentValue,
              onChanged: (newValue) {
                setState(() {
                  widget._currentValue = newValue!;
                });
              }),
        ),
      ),
      Text(widget._adjRight),
    ]);
  }
}
