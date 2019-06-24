import 'package:example/pages/custom_column_table.dart';
import 'package:example/pages/simple_table.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Table Widget"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Simple Table",
              ),
              Tab(
                text: "Custom Column Table",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SimpleTable(),
            CustomColumnTable(),
          ],
        ),
      ),
    );
  }
}
