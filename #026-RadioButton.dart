/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #024 - RadioButton 💙
-EN-
Flutter Students Club 💙
Learning widget #024 - RadioButton 💙
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
      home: MyHomePage(title: 'RadioButton'),
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
  int radioDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              title: Text("Fenerbahçe"),
              value: 1,
              groupValue: radioDeger,
              activeColor: Colors.blue,
              onChanged: (dynamic veri) {
                setState(() {
                  radioDeger = veri;
                });
              },
            ),
            RadioListTile(
              title: Text("Galatasaray"),
              value: 2,
              groupValue: radioDeger,
              activeColor: Colors.red,
              onChanged: (dynamic veri) {
                setState(() {
                  radioDeger = veri;
                });
              },
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
