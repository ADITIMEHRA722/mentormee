import 'package:flutter/material.dart';
import 'package:mentormee/comman/button.dart';
import 'package:mentormee/screens/batchlist.dart';
import 'package:mentormee/screens/course_newscr.dart';
import 'package:mentormee/screens/mentor_new.dart';

// import 'package:project/common/button.dart';
// import 'package:project/page/batchlist.dart';

class Currentelite extends StatefulWidget {
  Currentelite({Key? key}) : super(key: key);

  @override
  State<Currentelite> createState() => _CurrenteliteState();
}

class _CurrenteliteState extends State<Currentelite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white,
      // title: Text('Currently Elite',
      // style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      // leading: InkWell(
      //   onTap: (){
      //     Navigator.pop(context);
      //   },
      // child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
      // //toolbarHeight: 130,
      // elevation: 0,
      // ),

       body:
       Column(
      //  crossAxisAlignment: CrossAxisAlignment.start,
         children: [

          SizedBox(height: 40,),
        
         Container(height:300,width: 300 ,
       child: Image.asset('assets/img/current.png', fit: BoxFit.cover,),
       ),

     

         SizedBox(height: 30,),


        Padding(
          padding:EdgeInsets.only(left: 20),
          child: Text('Currently Elite',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ),

        SizedBox(height: 20,),

        Padding(
          padding:EdgeInsets.only(left: 20),
          child: Text('Lorem  lpsum  is  simply  dummy  text  of  the \nprinting and typesetting industry. Lorem lprum\nhas  been  the  industrs standard  dummy  text\never since the 1500s, when an unknown printer\ntook a gallary of type and scrambled it to make\na type specimen book . It survived not only five\ncenturies',
          style: TextStyle(fontSize: 17, color: Colors.grey),),
        ),

        SizedBox(height: 50,),

        Align(
          alignment: Alignment.center,
          child: Btns(
          onTap: (){
             //Navigator.push(context, MaterialPageRoute(builder: (context)=>MentorsNew()));
          },
          btnName: 'Enroll',),
        )
        ],),
        );
         }
      }