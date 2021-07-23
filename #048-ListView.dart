/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #048 - ListView 💙
-EN-
Flutter Students Club 💙
Learning widget #048 - ListView 💙
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
      home: MyHomePage(title: 'ListView'),
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
  final meyveler = [
    "Elma",
    "Kiraz",
    "Şeftali",
    "Armut",
    "Mandalina",
    "Portakal",
    "Kivi",
    "Üzüm",
    "Muz",
    "Çilek",
    "Vişne",
    "Ayva",
    "Erik",
    "Çağla",
    "Kayısı",
    "Dut",
    "Yaban Mersini"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: meyveler.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(meyveler[index]),
          );
        },
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
