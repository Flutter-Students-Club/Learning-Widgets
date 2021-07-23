/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #042 - Stepper 💙
-EN-
Flutter Students Club 💙
Learning widget #042 - Stepper 💙
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
      home: MyHomePage(title: 'Stepper'),
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
  int step = 0;
  List<Step> stepList = [
    Step(title: Text("Step 1"), content: Text("Start"), isActive: true),
    Step(
        title: Text("Step 2"),
        content: Text("Process 1"),
        state: StepState.editing),
    Step(
        title: Text("Step 3"),
        content: Text("Process 2"),
        state: StepState.editing),
    Step(
        title: Text("Step 4"),
        content: Text("Process 3"),
        state: StepState.editing),
    Step(title: Text("Step 5"), content: Text("End"), isActive: true),
  ];

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
            Container(
              child: Stepper(
                steps: stepList,
                currentStep: this.step,
                type: StepperType.vertical,
                onStepTapped: (value) {
                  setState(() {
                    step = value;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (step > 0) {
                      step = step - 1;
                    } else {
                      step = 0;
                    }
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (step < stepList.length - 1) {
                      step = step + 1;
                    } else {
                      step = 0;
                    }
                  });
                },
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
