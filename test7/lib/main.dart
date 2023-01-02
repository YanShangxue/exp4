import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Scaffold(
        appBar: AppBar(title: Text("test7")),
        body: Container(
          alignment: Alignment.center,
          child: Container(
            color: Colors.blueAccent,
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.4),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrangeAccent,
                child: const Text('open it'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}