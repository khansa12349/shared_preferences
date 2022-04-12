import 'package:demo_task/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';
class CodeLogic extends StatefulWidget {
  const CodeLogic({Key? key}) : super(key: key);

  @override
  _CodeLogicState createState() => _CodeLogicState();
}



class _CodeLogicState extends State<CodeLogic> {



  @override
  //Subscribe to Streams, ChangeNotifiers, or any other object that could change the data on this widget.
  void initState() {
    super.initState();
    userData();
  }
  userData() async {
    bool newUser = await hasUserVisited();


    if (newUser == true) {

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
    else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    }
    userVisitedData();
  }
  userVisitedData() async{
    SharedPreferences preferences =await SharedPreferences.getInstance();
    preferences.setBool('visit', true);
  }
  hasUserVisited() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool alreadyVisit = preferences.getBool('visit') ?? false;
    return alreadyVisit;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
