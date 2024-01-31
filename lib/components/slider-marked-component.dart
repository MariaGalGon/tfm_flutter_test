import 'package:flutter/material.dart';

class SliderMarkedComponent extends StatefulWidget {
  final String _adjLeft;
  final String _adjRight;
  int _currentValue;

  SliderMarkedComponent(this._adjLeft, this._adjRight, this._currentValue);

  @override
  State<SliderMarkedComponent> createState() => _SliderMarkedComponentState();
}

class _SliderMarkedComponentState extends State<SliderMarkedComponent> {
  @override
  Widget build(BuildContext context) {
    final inactiveColor = Color.fromRGBO(109, 114, 120, 1);
    final activeColor = Color.fromRGBO(0, 97, 164, 1);

    return SliderTheme(
        data: SliderThemeData(
            trackHeight: 5,
            thumbShape: RoundSliderThumbShape(
                disabledThumbRadius: 14, enabledThumbRadius: 14),
            rangeThumbShape: RoundRangeSliderThumbShape(
                disabledThumbRadius: 14, enabledThumbRadius: 14),
            // Shape of the divisions
            tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 8),
            inactiveTickMarkColor: inactiveColor,
            inactiveTrackColor: inactiveColor,
            thumbColor: activeColor,
            activeTickMarkColor: activeColor,
            activeTrackColor: activeColor),
        child: buildElements());
  }

  Widget buildElements() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget._adjLeft, style: TextStyle(fontSize: 14)),
        SizedBox(
          width: 250,
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
        Text(widget._adjRight, style: TextStyle(fontSize: 14))
      ],
    );
  }
}
