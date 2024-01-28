import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback _onTap;
  final String _content;
  final IconData _icon;

  const CustomButton(this._onTap, this._content, this._icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: FilledButton(
          onPressed: _onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(this._icon),
              SizedBox(width: 10),
              Text(this._content),
            ],
          )),
    );
  }
}
