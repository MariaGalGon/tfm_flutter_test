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
    final inactiveColor = Color.fromRGBO(223, 226, 235, 50);
    final activeColor = Color.fromRGBO(0, 97, 164, 1);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget._adjLeft, style: TextStyle(fontSize: 14)),
        SizedBox(
          width: 250,
          child: SliderTheme(
            data: SliderThemeData(
                inactiveTickMarkColor: inactiveColor,
                inactiveTrackColor: inactiveColor,
                thumbColor: activeColor,
                activeTrackColor: inactiveColor),
            child: Slider(
                value: widget._currentValue.toDouble(),
                min: 1,
                max: 7,
                divisions: 7,
                label: "${widget._currentValue}",
                onChanged: (newValue) {
                  setState(() {
                    widget._currentValue = newValue.toInt();
                  });
                }),
          ),
        ),
        Text(widget._adjRight, style: TextStyle(fontSize: 14))
      ],
    );
  }
}
