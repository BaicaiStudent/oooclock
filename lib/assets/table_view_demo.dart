import 'package:flutter/material.dart';
import "../assets/todo_demo.dart";
import '../assets/clock_settings.dart';
import '../assets/calendar_demo.dart';

class TableViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        Calendar(), //这里是日历
        ToDo(),  //这里是待办事项
        ClockSetting(), //这里是时间设定
      ],
    );
  }
}
