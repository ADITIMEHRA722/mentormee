import 'package:flutter/material.dart';
import 'package:mentormee/screens/batch.dart';
import 'package:mentormee/screens/batch/23/elite/elit_bt_add_elite.dart';
import 'package:mentormee/screens/batch/course_details_23_fr_bt.dart';
import 'package:mentormee/screens/course_newscr.dart';
import 'package:mentormee/screens/group.dart';

import 'package:mentormee/screens/notification.dart';

class EliteBt23 extends StatefulWidget {
  EliteBt23({Key? key}) : super(key: key);

  @override
  State<EliteBt23> createState() => _EliteBt23State();
}

class _EliteBt23State extends State<EliteBt23> {
  // int currentStep = 0;
  // dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      // backgroundColor: Colors.white,
      // title: Text('Course',
      // style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      // centerTitle: true,
      // leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      // ),

      body: SafeArea(
        child: Column(children: [
      
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text("Mentor" , style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.w700, 
              
                       ),), 
                        
                        Row(
                          children: [
                            InkWell(
      
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => Notifications())));
                              },
                              
                              child: Icon(Icons.notifications , size:30,)),
                            SizedBox(width: 20,),
                       Container(
                        height: 46, 
                        width: 46,
                              decoration: BoxDecoration(
                                
                                  shape: BoxShape.circle,
                                 // borderRadius: BorderRadius.circular(12)
                                 ),
                             
                              child:  Image.asset(
                                  "assets/img/Avatar.png",
                                  fit: BoxFit.cover,
                                  ),
                       
                     
                              
                            ),
                          ],
                        )
                      ],
                      ), 
              
                    ),
          ),
          Padding(
            padding:EdgeInsets.all(40),
            child: Container(
              height: 300,
              width: 300,
            child: Image.asset('assets/img/m5.JPG',fit: BoxFit.fill,),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Hriday Pitti',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 3,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text('    AIIMS-Bhopal\nNEET 2020:681/720\nChemistry:180/180',
            style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        //   SizedBox(height: 3,),
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 60),
        //  child: Text('Year:2021',style: TextStyle(fontWeight: FontWeight.bold),),),
        //   SizedBox(height: 3,),

        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 60),
        // child:  Text('Rank:237',style: TextStyle(fontWeight: FontWeight.bold),), ),
      
          SizedBox(height: 20,),
      
           InkWell(
            onTap: (){

             Navigator.push(context, MaterialPageRoute(builder: (context) => EliteBtAddForElite(),));
                              },
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal:60.0),
               child: Container(
                                              height: 40, 
                                              width: 200,
                                              decoration: BoxDecoration(  
                                                borderRadius: BorderRadius.circular(13), 
                                                color: Colors.blue,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Add Batch",
                                                //textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 20, 
                                                  color: Colors.white
                                                ),),
                                              ),
                                            ),
             ),
           ),
        ],
          
      
          
        
        
        ),
      ),

      );
  }}