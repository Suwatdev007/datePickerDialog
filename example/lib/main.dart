import 'package:flutter/material.dart';

import './date_picker_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text("DatePicker Dialog",),
          onPressed: () {
           showDialog(context: context,child: Dialog(child: DatePickerInPage(),));
          },
        ),
      ),
    );
  }
}
