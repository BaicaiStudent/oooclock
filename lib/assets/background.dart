import 'package:flutter/material.dart'; // 蓝黄背景色

class Background extends StatelessWidget {
  final Widget child;

  Background({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: SizedBox.expand(
          child: Card(color: Colors.yellowAccent),
        ),
      ),
    );
  }
}
