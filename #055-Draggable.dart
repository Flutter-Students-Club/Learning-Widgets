/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #055 - Draggable 💙
-EN-
Flutter Students Club 💙
Learning widget #055 - Draggable 💙
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
      home: MyHomePage(title: 'Draggable'),
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
  double width = 100.0, height = 100.0;
  late Offset position;

  @override
  void initState() {
    super.initState();
    position = Offset(0.0, height - 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned(
            left: position.dx,
            top: position.dy - height + 20,
            child: Draggable(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    "Drag Me",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              feedback: Container(
                child: Center(
                  child: Text(
                    "Drag To",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                color: Colors.green,
                width: width,
                height: height,
              ),
              onDragStarted: () {
                print("onDragStarted");
              },
              onDragCompleted: () {
                print("onDragCompleted");
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() {
                  position = offset;
                });
              },
            ),
          ),
        ],
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
