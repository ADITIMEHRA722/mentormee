import 'package:flutter/material.dart';

import 'package:mentormee/screens/login.dart';
import 'package:mentormee/screens/signup.dart';

class Planscn extends StatefulWidget {
  Planscn({Key? key}) : super(key: key);

  @override
  State<Planscn> createState() => _PlanscnState();
}

class _PlanscnState extends State<Planscn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: Column(
    children: [
    // Padding(
    //   padding: EdgeInsets.only(top: 60,right: 20),
    //   child: Row(mainAxisAlignment: MainAxisAlignment.end,
    //     children: [
    //      InkWell(
    //       onTap: (){

    //       },
    //        child: Text('Skip',
    //        style: TextStyle(fontSize: 18),),
    //      ),
    //   ],),
    // ),
      
    Padding(
      padding: EdgeInsets.only(top: 120,),
      child: Container(height: 300,width: 450,
      child:Image.asset('assets/img/a33.png'),),
    ),

    SizedBox(height: 10,),

    Column(children: [
      Text('Get students of IIT and AIIMS\n    as your personal Mentors!',
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      // SizedBox(height: 18,),

      // Text('study according to the\nstudy plan,make study\n      more motivated'),


    ],),

    SizedBox(height: 50,),


     Padding(
       padding: EdgeInsets.only(left: 140),
       child: SliderIconBtn(activeIndex: 2,),
     ),

     SizedBox(height: 90,),


     Padding(
       padding: EdgeInsets.only(left: 30),
       child: Row(children: [

        InkWell(
          onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscn()));
          },
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text('Sign up',
              style: TextStyle(color: Colors.white),),
            ),
          ),
        ),

        SizedBox(width: 10,),

         InkWell(
          onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscn()));
          },
           child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text('Log in',
              style: TextStyle(color: Colors.white),),
            ),
                 ),
         ),
       ],),
     )


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