/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #007 - Container 💙
-EN-
Flutter Students Club 💙
Learning widget #007 - Container 💙
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
      home: MyHomePage(title: 'Container'),
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
      body: Container(
        margin: EdgeInsets.all(10.0),
        width: 250,
        height: 400,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border.all(
              color: Colors.black,
              width: 3.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
            child: Text("Flutter Students Club",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),)),
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
