/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #028 - ToggleButtons 💙
-EN-
Flutter Students Club 💙
Learning widget #028 - ToggleButtons 💙
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
      home: MyHomePage(title: 'ToggleButtons'),
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
  var toggleDurum = [false, true, false];
  int selectedToggleIndeks = 0;
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
            ToggleButtons(
                children: [
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),
                ],
                isSelected: toggleDurum,
                color: Colors.blue,
                selectedColor: Colors.deepOrangeAccent,
                onPressed: (int selectedIndeks) {
                  setState(() {
                    toggleDurum[selectedIndeks] = !toggleDurum[selectedIndeks];
                  });
                  selectedToggleIndeks = selectedIndeks;
                }),
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
