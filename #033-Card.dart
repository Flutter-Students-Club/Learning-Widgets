/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #031 - Card 💙
-EN-
Flutter Students Club 💙
Learning widget #031 - Card 💙
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
      home: MyHomePage(title: 'Card'),
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
            SizedBox(
              width: 600,
              height: 200,
              child: Card(
                color: Colors.blue,
                elevation: 15.0,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  side: BorderSide(
                    width: 2,
                    color: Colors.redAccent,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Flutter Students Club",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.account_circle),
                            Text(
                              " Instagram: flutterstudentsclub",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
