/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #041 - ListTile 💙
-EN-
Flutter Students Club 💙
Learning widget #041 - ListTile 💙
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
      home: MyHomePage(title: 'ListTile'),
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
            Card(
              color: Colors.blue,
              child: ListTile(
                title: Text("Ahmet"),
                subtitle: Text("05301111111"),
                leading: Icon(Icons.account_circle_sharp),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                title: Text("Mehmet"),
                subtitle: Text("05302222222"),
                leading: Icon(Icons.account_circle_sharp),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                title: Text("Veli"),
                subtitle: Text("05303333333"),
                leading: Icon(Icons.account_circle_sharp),
                trailing: Icon(Icons.call),
              ),
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
