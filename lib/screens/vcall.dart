import 'package:flutter/material.dart';

class Vcall extends StatefulWidget {
  Vcall({Key? key}) : super(key: key);

  @override
  State<Vcall> createState() => _VcallState();
}

class _VcallState extends State<Vcall> {
  // int currentStep = 0;
  // dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Video call',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      elevation: 0,
       ),

       body: Padding(
         padding: EdgeInsets.only(top: 400),
         child: Column(children: [
          Text('David Smith',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text('24.11',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(
           children: [
            Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(Icons.volume_off,size: 30,color: Colors.black,),
              ),
            
            SizedBox(width: 20,),
            Icon(Icons.message,size: 30,),
            SizedBox(width: 20,),
            Icon(Icons.videocam_off,size: 30,),

          
           
          ],),
            SizedBox(height: 20,),


           Container(height: 50,width: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(40),
              
            ),
            child: Icon(Icons.call_end,color: Colors.white,),),
         ],),
       ),



    );}}