/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #029 - AlertDialog 💙
-EN-
Flutter Students Club 💙
Learning widget #029 - AlertDialog 💙
*/

// SAYFA 1
import 'package:flutter/material.dart';

class SayfaBir extends StatefulWidget {
  @override
  _SayfaBirState createState() => _SayfaBirState();
}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sayfa 1",
        style: TextStyle(color: Colors.blueAccent, fontSize: 30),
      ),
    );
  }
}

// SAYFA 2
import 'package:flutter/material.dart';

class SayfaIki extends StatefulWidget {
  @override
  _SayfaIkiState createState() => _SayfaIkiState();
}

class _SayfaIkiState extends State<SayfaIki> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sayfa 2",
        style: TextStyle(color: Colors.blueAccent, fontSize: 30),
      ),
    );
  }
}

// SAYFA 3
import 'package:flutter/material.dart';

class SayfaUc extends StatefulWidget {
  @override
  _SayfaUcState createState() => _SayfaUcState();
}

class _SayfaUcState extends State<SayfaUc> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sayfa 3",
        style: TextStyle(color: Colors.blueAccent, fontSize: 30),
      ),
    );
  }
}

// main.dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tabs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabs"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.looks_one)),
              Tab(icon: Icon(Icons.looks_two)),
              Tab(icon: Icon(Icons.looks_3)),
            ],
            indicatorColor: Colors.redAccent,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            SayfaBir(),
            SayfaIki(),
            SayfaUc(),
          ],
        ),
      ),
    );
  }
}

/*
Instagram : instagram.com/flutterstudentsclub
Twitter : twitter.com/Flutterstudents
LinkedIn : linkedin.com/company/flutterstudentsclub/
Medium : medium.com/flutter-students-club
Website : flutterstudentsclub.com
----------------------------------------------------
Flutter and the related logo are trademarks of Google LCC. Flutter  Students Club  isn’t affiliated with or otherwise sponsored by Google LLC.
*/
