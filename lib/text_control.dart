import 'package:flutter/material.dart';

class CustomTextControl extends StatelessWidget {
  final Function changeText;

  CustomTextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        'Click me',
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
      color: Colors.lightBlueAccent,
      onPressed: changeText,
    );
  }
}
