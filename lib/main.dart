
import 'package:demo_task/code_logic.dart';
import 'package:demo_task/welcome_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Preference',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CodeLogic(),
    );
  }
}