/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #002 - Appbar 💙
-EN-
Flutter Students Club 💙
Learning widget #002 - Appbar 💙
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
      home: MyHomePage(title: 'AppBar'),
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
    backgroundColor:Colors.amberAccent,
    title:Text("Appbar Başlık"),
      
    leading: IconButton(
      tooltip:"Menu Icon",
      icon:Icon(Icons.dehaze),
      onPressed: () {},
    ),
      actions:[
        TextButton(
            onPressed: () {},
          child:Text("Çıkış",style:TextStyle(color:Colors.white),
                    ),
        ),
      ]
    ),
      
      body: Center(
       
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
