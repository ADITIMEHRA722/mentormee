import 'package:flutter/material.dart';
import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/screens/course/cource_Details24.dart';

import 'package:mentormee/screens/course_23_mentors.dart';
import 'package:mentormee/screens/course/course_details.dart';
import 'package:mentormee/screens/course_newscr.dart';
import 'package:mentormee/screens/mentor_new.dart';
import 'package:mentormee/screens/notification.dart';

class Batch_23_24 extends StatefulWidget {
  const Batch_23_24({super.key});

  @override
  State<Batch_23_24> createState() => _Batch_23_24State();
}

class _Batch_23_24State extends State<Batch_23_24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottonBar(),
     // bottomNavigationBar: BottomBar1(),
    //   appBar: AppBar(
    //   backgroundColor: Colors.white,
    //   title: Text('Course',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    //   centerTitle: true,
    //   leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
    //   elevation: 0,
    // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [

             
                
                
                Container(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text("Course" , style: TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.w700, 
          
                   ),), 
          
                   Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => Notifications())));
                        },
                        
                        child: Icon(Icons.notifications, size: 30,)),
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

               SizedBox(height: 40,), 
                Align(
                alignment: Alignment.center,
                child: Text("Select your Year", style: TextStyle(fontSize: 25, ),)),






                SizedBox(height: 10,),


                 Container(
               // height: 200,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:50.0, horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
        
                      InkWell(
                        onTap: (){

                                Navigator.push(context, MaterialPageRoute(builder: (context) => CourceDetails(),));
                              },
                        child: Container(
                              
                          height: 150, 
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15),
                            color: Colors.blue.shade200,
                            image: DecorationImage(image: AssetImage("assets/img/2023.png"), 
                            fit: BoxFit.cover)
                             ),
                              
                            
                        ),
                      ), 
                      SizedBox(height: 50,),
        
                       InkWell(
                         onTap: (){

                                Navigator.push(context, MaterialPageRoute(builder: (context) => CourceDetails24(),));
                              },
                         child: Container(
                               
                                             height: 150, 
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15),
                            color: Colors.orange.shade200,
                            image: DecorationImage(image: AssetImage("assets/img/2024.png"), 
                            fit: BoxFit.cover)
                             ),
                               
                            //  child: Padding(
                            //    padding: const EdgeInsets.only(left:60,top:100,bottom:12.0),
                            //    child: Container(
                                
                            //     padding: EdgeInsets.all(5),
                            //     decoration: BoxDecoration(
                            // borderRadius:BorderRadius.only(
                            //    bottomLeft: Radius.circular(12),
                            //    topLeft: Radius.circular(12), 
                            // ),
                            // color: Colors.white.withOpacity(0.5),
                            //    ),
                            //     child: Align(
                                  
                            //       alignment: Alignment.bottomRight,
                            //       child: Text("2024", 
                            //       style: TextStyle(
                               
                            //         color: Colors.purple,   
                            //         fontSize: 20, 
                            //         fontWeight: FontWeight.w600
                               
                            //       ),))),
                            //  ),
                          
                               
                                             ),
                       ), 
        
                     
                    ],
                ),
                  ),

        
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 0),
                //   child: Container(
                //    // color: Colors.red,
                //       child:  Align(
                //         alignment: Alignment.topCenter,
                //         child: Column(
                //          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //            children: [
                            
                //             InkWell(
                //               onTap: (){

                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => CourceDetails(),));
                //               },
                //               child: Padding(
                //                 padding: const EdgeInsets.only(top:0.0, right: 60),
                //                 child: Container(
                //                  height: 200, 
                //                 width: 220,
                //                   child: Image.asset("assets/img/lang.png",
                //                   fit: BoxFit.cover,) ,
                //                 ),
                //               ),
                //             ), 
                //             SizedBox(height: 0,),
                          
                //             InkWell(
                //               onTap: (){

                //                 Navigator.push(context, MaterialPageRoute(builder: (context) => CourceDetails(),));
                //               },
                //               child: Padding(
                //                 padding: const EdgeInsets.only(right:70.0),
                //                 child: Container(
                //                 height: 200, 
                //                 width: 220,
                //                   child: Image.asset("assets/img/painting.png",
                //                   fit: BoxFit.cover,) ,
                //                 ),
                //               ),
                //             )
                      
                //           ],),
                //       )
                //       ),
                // )
                
        
                 
                ],
                ), 
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}