import 'package:flutter/material.dart';

class BoxButton extends StatefulWidget {
  int _groupValue;
  int _boxValue;
  final ValueChanged<int> _onTap;

  BoxButton(this._boxValue, this._groupValue, this._onTap);

  @override
  State<BoxButton> createState() => _BoxButtonState();
}

class _BoxButtonState extends State<BoxButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: OutlinedButton(
        child: Text("${widget._boxValue}",
            style: TextStyle(
                color: (widget._boxValue == widget._groupValue) ? Colors.white : Colors.grey)),
        style: OutlinedButton.styleFrom(
            backgroundColor: (widget._boxValue == widget._groupValue)
                ? Color.fromRGBO(20, 109, 171, 1)
                : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => setState(() {
          widget._onTap(widget._boxValue);
        }),
      ),
    );
  }
}
