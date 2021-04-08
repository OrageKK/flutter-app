import 'package:flutter/material.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listView-demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to It's me",
        home: Home(),
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Color(0xFFF6F6F6),
          appBar: AppBar(
            title: Text("因你不同"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search button is pressed.'),
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              // 指示器颜色
              indicatorColor: Colors.black54,
              // 指示器大小与图标统一
              indicatorSize: TabBarIndicatorSize.label,
              // 指示器宽度
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_activity),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              Icon(Icons.change_history, size: 128, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128, color: Colors.black12),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo()),
    );
  }
}
