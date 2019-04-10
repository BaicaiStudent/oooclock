import 'package:flutter/material.dart'; //底栏菜单

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

  // final TextStyle _textStyle = TextStyle(
  //   fontSize: 20.0,
  // );

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      fixedColor: Colors.red,
      iconSize: 25.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(null),
          title: Text('XXX'),
        ),
        BottomNavigationBarItem(
          icon: Icon(null),
          title: Text('XXX'),
        ),
        BottomNavigationBarItem(
          icon: Icon(null),
          title: Text('XXX'),
        ),
      ],
    );
  }
}
