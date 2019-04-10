import 'package:flutter/material.dart';
import './assets/drawer_demo.dart';
import './assets/bottom_navigation_bar.dart';
import './assets/table_view_demo.dart';
// import './assets/home_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
      // theme: ThemeData(
      //   primaryColor: Colors.blue,
      //   highlightColor: Color.fromRGBO(253, 233, 78, 0.5),
      //   splashColor: Color.fromRGBO(253, 233, 78, 0.5),
      // ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarDemo = BottomNavigationBarDemo();
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
                    icon: Icon(
                      Icons.view_headline,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.done_all),
                  )
                ],
              )),
          body: TableViewDemo(), //三选项
          endDrawer: DrawerDemo(), //侧边栏
          bottomNavigationBar: bottomNavigationBarDemo), //底栏
    );
  }
}
