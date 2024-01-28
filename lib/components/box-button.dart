import 'package:flutter/material.dart';

class BoxButton extends StatefulWidget {
  int _value;
  final ValueChanged<int> _onTap;

  BoxButton(this._value, this._onTap);

  @override
  State<BoxButton> createState() => _BoxButtonState();
}

class _BoxButtonState extends State<BoxButton> {
  bool isActivated = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: OutlinedButton(
        child: Text("${widget._value}",
            style: TextStyle(color: isActivated ? Colors.white : Colors.grey)),
        style: OutlinedButton.styleFrom(
            backgroundColor:
                isActivated ? Color.fromRGBO(20, 109, 171, 1) : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => setState(() {
          isActivated = !isActivated;
          widget._onTap(widget._value);
        }),
      ),
    );
  }
}
