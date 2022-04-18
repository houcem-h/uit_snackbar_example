import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SnackBar example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                      content: const Text('Snackar in action'),
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.blue,
                    action: SnackBarAction(
                      label: 'click me',
                      textColor: Colors.white,
                      onPressed: () {

                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);                },
                child: const Text("Launch"),
            )
          ],
        ),
      ),
    );
  }
}
