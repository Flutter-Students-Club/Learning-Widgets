/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #019 - Expanded 💙
-EN-
Flutter Students Club 💙
Learning widget #019 - Expanded 💙
*/


// ÖRNEK 1
// EXAMPLE 1
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
      home: MyHomePage(title: 'Expanded'),
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
  String? pizzaCesidi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.lightBlueAccent,
            ),
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}

// ÖRNEK 1
// EXAMPLE 1
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
      home: MyHomePage(title: 'Expanded'),
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
      body: Column(
        children: [
          Expanded(
            flex: 40,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.lightBlueAccent,
            ),
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
          Expanded(
            flex: 60,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
    );
  }
}


/*
Instagram : instagram.com/flutterstudentsclub
Twitter : twitter.com/Flutterstudents
LinkedIn : linkedin.com/company/flutterstudentsclub/
Medium : medium.com/beta-class-online
Website : flutterstudentsclub.com
----------------------------------------------------
Flutter and the related logo are trademarks of Google LCC. Flutter  Students Club  isn’t affiliated with or otherwise sponsored by Google LLC.
*/
