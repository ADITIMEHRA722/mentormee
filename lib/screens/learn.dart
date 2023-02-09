import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mentormee/screens/plan.dart';

class Learnscn extends StatefulWidget {
  Learnscn({Key? key}) : super(key: key);

  @override
  State<Learnscn> createState() => _LearnscnState();
}

class _LearnscnState extends State<Learnscn> {
   @override
  void initState() {
  super.initState();
  Timer(
     Duration(seconds: 3),
     ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: 
     (BuildContext context) => Planscn()))
  );
  }
  
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
  body: Column(
    children: [
    Padding(
      padding:EdgeInsets.only(top: 60,right: 20),
      child:Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        InkWell(
        onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Planscn()));
          },
        child: Text('Skip',
        style: TextStyle(fontSize: 18),),
         ),
      ],),
    ),
      
      Padding(
      padding: EdgeInsets.only(top: 20,),
      child: Container(height: 300,width: 450,
      child:Image.asset('assets/img/a44.png'),),
    ),

      SizedBox(height: 10,),

      Column(children: [
      Text('            Students of your\n Dream College To Make Your\n           Dream Come True!',
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      // SizedBox(height: 18,),

      // Text('Easy and fast learning\nat any time to help you\n improve various skills'),


    ],),

     SizedBox(height: 50,),


       Padding(
       padding: EdgeInsets.only(left: 140),
       child: SliderIconBtn(activeIndex: 1,),
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
        for (var i = 0; i < 3; i++)
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