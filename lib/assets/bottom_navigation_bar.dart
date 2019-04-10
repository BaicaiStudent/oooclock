import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState(){
  //   return _BottomNavigationBarDemoState();
  // }

  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      fixedColor: Colors.red,
      iconSize: 20.0,
      items: [
        BottomNavigationBarItem(
          icon: Text('8'),
          title: Text('小时'),
        ),
        BottomNavigationBarItem(
          icon: Text('14'),
          title: Text('小时'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check_circle),
          title: Text('确定'),
        ),
      ],
    );
  }
}
