import 'package:flutter/material.dart'; //功能菜单栏
import "../assets/todo_demo.dart"; //这里是待办事项
import '../assets/clock_settings.dart'; //这里是时间设定
import '../assets/calendar_demo.dart'; //这里是日历

class TableViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        Calendar(), //这里是日历
        ToDo(), //这里是待办事项
        ClockSetting(), //这里是时间设定
      ],
    );
  }
}
