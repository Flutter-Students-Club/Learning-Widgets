/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #004 - Column 💙
-EN-
Flutter Students Club 💙
Learning widget #004 - Column 💙
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
      home: MyHomePage(title: 'Column'),
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
    title:Text(widget.title),),
     body: Center(
      child: Column(
      children: [Container(color:Colors.lightBlueAccent,
          width:200, height:200),
  Container(width:200, height:200, color:Colors.blue, 
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("FLUTTER"),
                Text("STUDENTS"),
                Text("CLUB"),
              ],
            ),),
                 Container(
                 color: Colors.lightBlueAccent, width:200, height:200),
                 
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
