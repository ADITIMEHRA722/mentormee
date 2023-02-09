import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mentormee/screens/trial.dart';


class Splashscn extends StatefulWidget {
  Splashscn({Key? key}) : super(key: key);

  @override
  State<Splashscn> createState() => _SplashscnState();
}

class _SplashscnState extends State<Splashscn> {
   @override
  void initState() {
  super.initState();
   Timer(
     Duration(seconds: 4),
     ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
    (BuildContext context) => Trialscn()))
  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
         child: Image.asset('assets/img/a11.png',),),
         SizedBox(height: 5,),

         Column(
         children: [
         Text('MentorMee.in',
         style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
         SizedBox(height: 5,),
         Text('Personalised Mentorship Platform'),
         ],),
         ],),

    );
  }

}






    