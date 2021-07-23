/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #023 - CheckBox 💙
-EN-
Flutter Students Club 💙
Learning widget #023 - CheckBox 💙
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
      home: MyHomePage(title: 'CheckBox'),
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
  bool javaDurum = false;
  bool kotlinDurum = false;
  bool flutterDurum = false;
  bool swiftDurum = false;
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
            CheckboxListTile(
              title: Text("Java"),
              value: javaDurum,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.blue,
              activeColor: Colors.amberAccent,
              onChanged: (dynamic veri) {
                setState(() {
                  javaDurum = veri;
                });
              },
            ),
            CheckboxListTile(
                title: Text("Kotlin"),
                value: kotlinDurum,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.blue,
                activeColor: Colors.amberAccent,
                onChanged: (dynamic veri) {
                  setState(() {
                    kotlinDurum = veri;
                  });
                }),
            CheckboxListTile(
                title: Text("Flutter"),
                value: flutterDurum,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.blue,
                activeColor: Colors.amberAccent,
                onChanged: (dynamic veri) {
                  setState(() {
                    flutterDurum = veri;
                  });
                }),
            CheckboxListTile(
                title: Text("Swift"),
                value: swiftDurum,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.blue,
                activeColor: Colors.amberAccent,
                onChanged: (dynamic veri) {
                  setState(() {
                    swiftDurum = veri;
                  });
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
