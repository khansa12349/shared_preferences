import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  //Subscribe to Streams, ChangeNotifiers, or any other object that could change the data on this widget.



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Center(child: Text("WELCOME",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),
          )),

        ],
      ),
    );
  }
}
