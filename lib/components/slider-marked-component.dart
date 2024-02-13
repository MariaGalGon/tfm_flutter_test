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
    final inactiveColor = Color.fromRGBO(223, 226, 235, 50);
    final activeColor = Color.fromRGBO(0, 97, 164, 1);

    return SliderTheme(
        data: SliderThemeData(
            trackHeight: 5,
            thumbShape: RoundSliderThumbShape(
                disabledThumbRadius: 14, enabledThumbRadius: 14),
            // Shape of the divisions
            tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 8),
            inactiveTickMarkColor: Colors.white,
            inactiveTrackColor: inactiveColor,
            thumbColor: activeColor,
            activeTrackColor: inactiveColor,
            activeTickMarkColor: Colors.white),
        child: buildElements());
  }

  Widget buildElements() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 130,
            child: Text(widget._adjLeft,
                textAlign: TextAlign.end, style: TextStyle(fontSize: 14))),
        SizedBox(
          width: 250,
          child: Slider(
              value: widget._currentValue.toDouble(),
              min: 1,
              max: 7,
              divisions: 6,
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
