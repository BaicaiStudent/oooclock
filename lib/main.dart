import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rr',
      home: new Container(
        color: Colors.blue,
        child: SafeArea(
          child: SizedBox.expand(
            child: Card(color: Colors.yellowAccent),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
