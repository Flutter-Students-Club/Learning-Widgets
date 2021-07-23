/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #033 - BottomNavigationBar 💙
-EN-
Flutter Students Club 💙
Learning widget #033 - BottomNavigationBar 💙
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
      home: MyHomePage(title: 'BottomNavigationBar'),
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
  int index = 0;
  var sayfaListesi = [SayfaBir(), SayfaIki(), SayfaUc()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: sayfaListesi[index],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "Bir"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "İki"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Üç"),
          ],
          currentIndex: index,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueAccent,
          onTap: (secilenIndex) {
            setState(() {
              index = secilenIndex;
            });
          }),
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
