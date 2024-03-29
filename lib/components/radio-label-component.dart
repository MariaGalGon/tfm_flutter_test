import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RadioLabelComponent extends StatefulWidget {
  final String _adjLeft;
  final String _adjRight;
  int _currentValue;

  RadioLabelComponent(this._adjLeft, this._adjRight, this._currentValue);

  @override
  State<RadioLabelComponent> createState() => _RadioComponentState();
}

class _RadioComponentState extends State<RadioLabelComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 130,
            child: Text(widget._adjLeft,
                textAlign: TextAlign.end, style: TextStyle(fontSize: 14))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("1", style: TextStyle(fontSize: 14)),
              Material(
                child: Radio(
                    value: 1,
                    groupValue: widget._currentValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget._currentValue = newValue!;
                      });
                    }),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("2", style: TextStyle(fontSize: 14)),
              Material(
                child: Radio(
                    value: 2,
                    groupValue: widget._currentValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget._currentValue = newValue!;
                      });
                    }),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("3", style: TextStyle(fontSize: 14)),
              Material(
                child: Radio(
                    value: 3,
                    groupValue: widget._currentValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget._currentValue = newValue!;
                      });
                    }),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("4", style: TextStyle(fontSize: 14)),
              Material(
                child: Radio(
                    value: 4,
                    groupValue: widget._currentValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget._currentValue = newValue!;
                      });
                    }),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("5", style: TextStyle(fontSize: 14)),
              Material(
                child: Radio(
                    value: 5,
                    groupValue: widget._currentValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget._currentValue = newValue!;
                      });
                    }),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("6", style: TextStyle(fontSize: 14)),
              Material(
                child: Radio(
                    value: 6,
                    groupValue: widget._currentValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget._currentValue = newValue!;
                      });
                    }),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("7", style: TextStyle(fontSize: 14)),
              Material(
                child: Radio(
                    value: 7,
                    groupValue: widget._currentValue,
                    onChanged: (newValue) {
                      setState(() {
                        widget._currentValue = newValue!;
                      });
                    }),
              )
            ],
          ),
        ),
        Text(widget._adjRight)
      ],
    );
  }
}
