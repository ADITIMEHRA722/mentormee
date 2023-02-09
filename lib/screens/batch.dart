import 'package:flutter/material.dart';
import 'package:mentormee/comman/button.dart';
import 'package:mentormee/screens/current.dart';
import 'package:mentormee/screens/enroll.dart';
// import 'package:project/chat.dart';
// import 'package:project/common/button.dart';
// import 'package:project/grouplist.dart';
// import 'package:project/page/current.dart';
// import 'package:project/page/enroll.dart';

class Batchscn extends StatefulWidget {
  Batchscn({Key? key}) : super(key: key);

  @override
  State<Batchscn> createState() => _BatchscnState();
}

class _BatchscnState extends State<Batchscn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    //   appBar: AppBar(backgroundColor: Colors.white,
    //   title: Text('Batch',
    //   style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
    //   leading: InkWell(
    //     onTap: (){
    //       Navigator.pop(context);
    //     },
    //   child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
    //  // toolbarHeight: 130,
    //  elevation: 0,
    //   ),


        body: Column(children: [
        Padding(
        padding: EdgeInsets.only(top: 40),
        child: Row(
          children: [
      //  SizedBox(width: 8,),

        // InkWell(
        //   onTap: (){
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.arrow_back,size: 30,)),
        // SizedBox(width: 8,),
        // Text('Batches',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
         ],
         ),
        ),

      //  SizedBox(height: 20,),

       Container(height:300,width: 300 ,
       child: Image.asset('assets/img/batch.png', fit: BoxFit.cover,),
       ),

       SizedBox(height: 30),

       Text('Choose  batches',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

       SizedBox(height: 13,),

       Text('      The world class mentors from india top\nunivercity and organization. Keep following to\n                           get their videos' , 
       style: TextStyle(fontSize: 18, color:  Colors.grey)),
       SizedBox(height: 30,),
       
        Btns(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Currentelite() ));
          },
          btnName: 'Currently Elite',
          width: 220,
        ),
       
   SizedBox(height: 22,),
        Btns(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Enrollscn() ));
          },
          btnName: 'Elite +',
          width: 210,
        ),


  ],),

    );
  }
}