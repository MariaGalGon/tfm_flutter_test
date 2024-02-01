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
  // late ValueChanged<int> _valueChanged;

  // @override
  // void initState() {
  //   super.initState();

  //   _valueChanged = (value) {
  //     widget._currentValue = value;
  //   };
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Text(widget._adjLeft, style: TextStyle(fontSize: 14)),
  //       BoxButton(1, widget._currentValue, _valueChanged),
  //       BoxButton(2, widget._currentValue, _valueChanged),
  //       BoxButton(3, widget._currentValue, _valueChanged),
  //       BoxButton(5, widget._currentValue, _valueChanged),
  //       BoxButton(6, widget._currentValue, _valueChanged),
  //       BoxButton(7, widget._currentValue, _valueChanged),
  //       Text(widget._adjRight, style: TextStyle(fontSize: 14))
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget._adjLeft, style: TextStyle(fontSize: 14)),
        Padding(
          padding: const EdgeInsets.all(4),
          child: OutlinedButton(
            child: Text("1",
                style: TextStyle(
                    color: (1 == widget._currentValue)
                        ? Colors.white
                        : Colors.grey)),
            style: OutlinedButton.styleFrom(
                backgroundColor: (1 == widget._currentValue)
                    ? Color.fromRGBO(20, 109, 171, 1)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => setState(() {
              widget._currentValue = 1;
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: OutlinedButton(
            child: Text("2",
                style: TextStyle(
                    color: (2 == widget._currentValue)
                        ? Colors.white
                        : Colors.grey)),
            style: OutlinedButton.styleFrom(
                backgroundColor: (2 == widget._currentValue)
                    ? Color.fromRGBO(20, 109, 171, 1)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => setState(() {
              widget._currentValue = 2;
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: OutlinedButton(
            child: Text("3",
                style: TextStyle(
                    color: (3 == widget._currentValue)
                        ? Colors.white
                        : Colors.grey)),
            style: OutlinedButton.styleFrom(
                backgroundColor: (3 == widget._currentValue)
                    ? Color.fromRGBO(20, 109, 171, 1)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => setState(() {
              widget._currentValue = 3;
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: OutlinedButton(
            child: Text("4",
                style: TextStyle(
                    color: (4 == widget._currentValue)
                        ? Colors.white
                        : Colors.grey)),
            style: OutlinedButton.styleFrom(
                backgroundColor: (4 == widget._currentValue)
                    ? Color.fromRGBO(20, 109, 171, 1)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => setState(() {
              widget._currentValue = 4;
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: OutlinedButton(
            child: Text("5",
                style: TextStyle(
                    color: (5 == widget._currentValue)
                        ? Colors.white
                        : Colors.grey)),
            style: OutlinedButton.styleFrom(
                backgroundColor: (5 == widget._currentValue)
                    ? Color.fromRGBO(20, 109, 171, 1)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => setState(() {
              widget._currentValue = 5;
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: OutlinedButton(
            child: Text("6",
                style: TextStyle(
                    color: (6 == widget._currentValue)
                        ? Colors.white
                        : Colors.grey)),
            style: OutlinedButton.styleFrom(
                backgroundColor: (6 == widget._currentValue)
                    ? Color.fromRGBO(20, 109, 171, 1)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => setState(() {
              widget._currentValue = 6;
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: OutlinedButton(
            child: Text("7",
                style: TextStyle(
                    color: (7 == widget._currentValue)
                        ? Colors.white
                        : Colors.grey)),
            style: OutlinedButton.styleFrom(
                backgroundColor: (7 == widget._currentValue)
                    ? Color.fromRGBO(20, 109, 171, 1)
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => setState(() {
              widget._currentValue = 7;
            }),
          ),
        ),
        Text(widget._adjRight, style: TextStyle(fontSize: 14))
      ],
    );
  }
}
