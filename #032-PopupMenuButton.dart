/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #030 - PopupMenuButton 💙
-EN-
Flutter Students Club 💙
Learning widget #030 - PopupMenuButton 💙
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
      home: MyHomePage(title: 'PopupMenuButton'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton(
              child: Icon(Icons.add_a_photo),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Fotoğraf yükle"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Fotoğraf çek"),
                ),
              ],
              onCanceled: () {
                print("İşlem seçilmedi");
              },
              onSelected: (menuItemValue) {
                if (menuItemValue == 1) {
                  print("İşlem 1 seçildi");
                }
                if (menuItemValue == 2) {
                  print("İşlem 2 seçildi");
                }
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
