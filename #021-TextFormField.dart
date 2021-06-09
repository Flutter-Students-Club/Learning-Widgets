/* 
-TR-
Flutter Students Club 💙
Widget öğreniyorum #021 - TextFormField 💙
-EN-
Flutter Students Club 💙
Learning widget #021 - TextFormField 💙
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
      home: MyHomePage(title: 'TextFormField'),
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
  var formKey = GlobalKey<FormState>();
  var tfUsername = TextEditingController();
  var tfPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: tfUsername,
                decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                validator: (tfdata) {
                  if (tfdata!.isEmpty) {
                    return "Lütfen bir kullanıcı adı giriniz";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: tfPassword,
                decoration: InputDecoration(hintText: "Parola"),
                obscureText: true,
                validator: (tfdata) {
                  if (tfdata!.isEmpty) {
                    return "Lütfen bir parola giriniz";
                  }
                  if (tfdata.length < 6) {
                    return "Şifreniz en az altı haneli olmalıdır";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text("Giriş"),
                onPressed: () {
                  bool kontrolSonucu = formKey.currentState!.validate();
                  if (kontrolSonucu) {
                    //String username = tfUsername.text;
                    //String password = tfPassword.text;
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Giriş Yapıldı')));
                  }
                },
              ),
            ],
          ),
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
