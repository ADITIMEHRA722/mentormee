import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mentormee/screens/learn.dart';


class Trialscn extends StatefulWidget {
  Trialscn({Key? key}) : super(key: key);

  @override
  State<Trialscn> createState() => _TrialscnState();
}

class _TrialscnState extends State<Trialscn> {
   @override
  void initState() {
  super.initState();
   Timer(
     Duration(seconds: 3),
     ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
    (BuildContext context) => Learnscn())),
  );
  }
  @override
  Widget build(BuildContext context){
  return Scaffold(
  body: Column(
    children: [
    Padding(
      padding: EdgeInsets.only(top: 60,right: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.end,
         children: [
         InkWell(
         onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Learnscn()));
          },
           child: Text('Skip',
           style: TextStyle(fontSize: 18),),
         ),
      ],),
    ),
      
    Padding(
      padding: EdgeInsets.only(top: 20,),
      child: Container(height: 300,width: 450,
      child:Image.asset('assets/img/a22.png'),),
    ),

    SizedBox(height: 10,),

    Column(children: [
      Text('Get Started With Mentormee',
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      // SizedBox(height: 18,),

      // Text(' Free courses for you to\nfind your way to learning'),


    ],),

       SizedBox(height: 50,),


       Padding(
       padding: EdgeInsets.only(left: 140),
       child: SliderIconBtn(activeIndex: 0,),
     ),

],),

    );
  }
}

class SliderIconBtn extends StatelessWidget {
  final int? activeIndex;
  const SliderIconBtn({super.key, this.activeIndex});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(var i = 0; i < 3; i++)
           Container(
            width: 35,
            height: 5,
            decoration: BoxDecoration(
                border: Border.all(
                color: activeIndex == i ? Colors.black : Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(50))),
          ),
      ],
    );
  }
}