/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #018 - DropDownButton 💙
-EN-
Flutter Students Club 💙
Learning widget #018 - DropDownButton 💙
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
      home: MyHomePage(title: 'DropDown Button'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: pizzaCesidi,
              items: [
                "Karışık Pizza",
                "Pastırmalı Pizza",
                "Mexico Pizza",
                "İtalyan Pizza",
                "Anadolu Pizza",
                "Vejeteryan Pizza",
              ].map((String label) => DropdownMenuItem(
              child: Text(label),
                value: label,
              ))
              .toList(),
              onChanged: (String? value) {
                setState(() {
                  pizzaCesidi = value;
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
