import 'package:flutter/material.dart';
import './assets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        highlightColor: Color.fromRGBO(253, 233, 78, 0.5),
        splashColor: Color.fromRGBO(253, 233, 78, 0.5),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final Widget child;

  Home({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'menu',
              onPressed: () => debugPrint('menu-pr'),
            ),
            title: Text('oooclock'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint('search-pr'),
              ),
            ],
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
          body: TabBarView(
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
          ),
          drawer: Text('this is your clock'),
        ));
  }
}
