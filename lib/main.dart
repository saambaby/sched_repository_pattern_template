import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sched/injectable.dart';


void main() {
  configureDependencies(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sched',
      home: Container(),
    );
  }
}

