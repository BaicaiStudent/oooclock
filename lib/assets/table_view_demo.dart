import 'package:flutter/material.dart';

class TableViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        Icon(
          Icons.calendar_today,
          size: 128.0,
          color: Colors.red,
        ),
        Icon(
          Icons.done,
          size: 128.0,
          color: Colors.blue,
        ),
        Icon(
          Icons.done_all,
          size: 128.0,
          color: Colors.black12,
        ),
      ],
    );
  }
}
