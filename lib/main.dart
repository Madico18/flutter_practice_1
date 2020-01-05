import 'package:flutter/material.dart';
import 'package:flutter_practice_1/text.dart';
import 'package:flutter_practice_1/text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _initialText = 'Initial Text';

  void _changeText() {
    setState(() {
      if (_initialText == 'Initial Text') {
        _initialText = 'New changed text';
      } else {
        _initialText = 'Initial Text';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practice 1'),
        ),
        body: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomText(_initialText),
              CustomTextControl(_changeText),
            ],
          ),
        ),
      ),
    );
  }
}
