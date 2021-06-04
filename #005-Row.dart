/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #005 - Row 💙
-EN-
Flutter Students Club 💙
Learning widget #005 - Row 💙
*/


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
      home: MyHomePage(title: 'Row'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              color: Colors.lightBlueAccent,
              width: 137,
              height: 125,
            ),
            Container(
              color: Colors.lightBlueAccent,
              width: 137,
              height: 125,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("FLUTTER"),
                  Text("STUDENTS"),
                  Text("CLUB"),
                ],
              ),
            ),
            Container(
              color: Colors.lightBlueAccent,
              width: 137,
              height: 125,
            ),
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
