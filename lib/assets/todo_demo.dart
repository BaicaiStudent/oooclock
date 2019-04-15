import 'package:flutter/material.dart'; //待办事项

void main() => runApp(new ToDo());

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ToDoDemo());
  }
}

class ToDoDemo extends StatefulWidget {
  @override
  _ToDoDemoState createState() => _ToDoDemoState();
}

class _ToDoDemoState extends State<ToDoDemo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo List',
      home: new Scaffold(
        // appBar: new AppBar(title: new Text('Todo List')),
        body: new Container(),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => debugPrint('Add-pr'),
          tooltip: 'Add task',
          child: new Icon(
            Icons.add_circle,
            color: Colors.yellow,
          ),
          // elevation: 3.0,
          // highlightElevation: 2.0,
          backgroundColor: Colors.blue, // 红色
        ),
      ),
    );
  }
}
