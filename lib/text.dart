import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String initialText;

  CustomText(this.initialText);

  @override
  Widget build(BuildContext context) {
    return Text(
      initialText,
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
