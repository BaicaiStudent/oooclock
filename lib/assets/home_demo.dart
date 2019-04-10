import 'package:flutter/material.dart';
import './drawer_demo.dart';

class HomeDemo extends StatelessWidget {
  final Widget child;

  HomeDemo({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () => debugPrint('search-pr'),
          ),
          title: Text('oooclock'),
          centerTitle: true,
          actions: <Widget>[],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.yellowAccent,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.calendar_today),
              ),
              Tab(
                icon: Icon(Icons.done),
              ),
              Tab(
                icon: Icon(Icons.done_all),
              )
            ],
          ),
        ),
      ),
    );
  }
}
