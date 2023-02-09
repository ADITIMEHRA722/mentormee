import 'package:flutter/material.dart';
import 'package:mentormee/screens/final_home.dart';
import 'package:mentormee/screens/home.dart';


class Sucessscn extends StatefulWidget {
  Sucessscn({Key? key}) : super(key: key);

  @override
  State<Sucessscn> createState() => _SucessscnState();
  }

  class _SucessscnState extends State<Sucessscn> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 148, 144, 144),

   body:
   Center(
   child: Container(height: 300,width: 280,
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
   color: Colors.white),
   child: Column(
    children: [
    Padding(
      padding:EdgeInsets.only(top: 20),
      child: Container(height: 40,width: 40,
      decoration: BoxDecoration(color: Colors.blue,
      borderRadius: BorderRadius.circular(30)),
      child: Icon(Icons.done,color: Colors.white,)),
    ),
    SizedBox(height: 10,),
    Text('Success',
    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

    SizedBox(height: 30,),

    Text('  Congratulations,you have\ncompleted your registration!'),

    SizedBox(height: 40),

      InkWell(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalHome()));
      },
      child: Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(color: Colors.blue,
      borderRadius: BorderRadius.circular(20)),
      child: Center(child: Text('Done',
      style: TextStyle(color: Colors.white,fontSize: 18),)),
      ),
    ),




  ],),),
  ),




    );
  }
}