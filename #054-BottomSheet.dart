/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #052 - BottomSheet 💙
-EN-
Flutter Students Club 💙
Learning widget #052 - BottomSheet 💙
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
      home: MyHomePage(title: 'BottomSheet'),
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
            ElevatedButton(
              child: Text("Tıkla"),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: Icon(Icons.photo),
                          title: Text("Photo"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text("Music"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.videocam),
                          title: Text("Video"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
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
