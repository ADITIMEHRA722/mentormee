

import 'package:flutter/material.dart';
import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/screens/batch.dart';
import 'package:mentormee/screens/batch/24/elite%20plus/pay_now_bt_eliteplus_24.dart';
import 'package:mentormee/screens/batch/24/elite/pay_now_bt_24_elite.dart';
import 'package:mentormee/screens/course_23_mentors.dart';
import 'package:mentormee/screens/explore/24%20expo/explore_elite24.dart';
import 'package:mentormee/screens/mentor_new.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/pay_now.dart';

class CourceDeatils24ForBt extends StatefulWidget {
  const CourceDeatils24ForBt({super.key});

  @override
  State<CourceDeatils24ForBt> createState() => _CourceDetails24State();
}

class _CourceDetails24State extends State<CourceDeatils24ForBt>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

  //   TabController _tabController = TabController(
  // length: 3, vsync: this, initialIndex: 0);

    return Scaffold(
       bottomNavigationBar: BottonBar(),
     // bottomNavigationBar: BottomBar1(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
         SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: [
               Container(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text("Course" , style: TextStyle(
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
      
      
                  SizedBox(height: 20,),
          
                Container(
              //    height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                   child: TextField( 
                    decoration: InputDecoration( 
                      suffixIcon: Image.asset("assets/img/filter.png",
                     height: 1, width: 2,
                       fit: BoxFit.contain, 
                      
                      color: Colors.grey.shade500,
                     ),
                      hintText: "Find Course", 
                      prefixIcon: InkWell(
                         onTap: (){
                     // Navigator.push(context, MaterialPageRoute(builder:(context)=>Result()));
                    },
                        child: Icon(Icons.search)), 
                       fillColor: Colors.grey.shade100,
                       border: OutlineInputBorder(  
                                   borderRadius: BorderRadius.circular(24), 
                                   borderSide: BorderSide.none, 
                                 ), 
                    ), 
                   
                   ),
                ), 
          
                 SizedBox(height: 25,),
      
                 
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text("Choose your course", 
                    style: TextStyle( 
                        fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ),
                ),
      
             SizedBox(height: 10,),

              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                   padding: EdgeInsets.all(10),
                                 //height: 120,
                                 decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(20),
                                     boxShadow: [
                                       BoxShadow(blurRadius: 10, color: Colors.grey)
                                     ]),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Column(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text(
                                             "Elite 2024",
                                             style: TextStyle(
                                               fontSize: 20,
                                               fontWeight: FontWeight.bold,
                                             ),
                                           ),
                                              

                                              Icon(Icons.share, size: 30,),
                                          
                                         ],
                                       ),
                                       SizedBox(
                                         height: 10,
                                       ),
                                      
                                       Container(
                                         height: 150,
                                         width: 300,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         child: Image.asset("assets/img/9999.png", 
                                         fit: BoxFit.cover,),
                                       ), 

                                       SizedBox(height: 10,),

                                        Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [

                                         Row(
                                           children: [

                                              
                                               Icon(  Icons.person, 
                                               size: 15, color: Colors.grey),
                                               SizedBox(width: 10,),
                                             Text("Elite 2024", 
                                           style: TextStyle(
                                               fontSize: 15, color: Colors.grey),),
                                              
                                           ],
                                         ),
                                        SizedBox(height: 10,),
                                         Row(
                                           children: [

                                            
                                               Icon(  Icons.calendar_month, 
                                               size: 15, color: Colors.grey),
                                                SizedBox(width: 10,),
                                             Text("Till Neet", 
                                           style: TextStyle(
                                               fontSize: 15, color: Colors.grey),),
                                               
                                           ],
                                         ),
              SizedBox(height: 10,),
                                         Row(
                                           children: [
                                              Icon(  Icons.star, 
                                               size: 15, color: Colors.grey),
                                                SizedBox(width: 10,),
                                             Text("****", 
                                           style: TextStyle(
                                               fontSize: 15, color: Colors.grey),),
                                              
                                              
                                           ],
                                         ),

                                         Divider(),
                                         Text("9999 ???", 
                                           style: TextStyle(
                                               fontSize: 35, color: Colors.blue),),
                                              SizedBox(height: 5,),
                                               Text("(full batch)", 
                                           style: TextStyle(
                                               fontSize: 12, color: Colors.grey),),

                                               SizedBox(height: 10,),

                                               Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [

                                                 InkWell( 
                                                   onTap: (){
                                                   Navigator.push(context, MaterialPageRoute(builder: ((context) => ExploreElite24())));
                                                   },
                                                   child: Container(
                                                     height: 40, 
                                                     width: 120,
                                                     decoration: BoxDecoration(  
                                                       borderRadius: BorderRadius.circular(15), 
                                                       color: Colors.blue,
                                                     ),
                                                     child: Align(
                                                       alignment: Alignment.center,
                                                       child: Text("Explore",
                                                       //textAlign: TextAlign.center,
                                                       style: TextStyle(
                                                         fontSize: 20, 
                                                         color: Colors.white
                                                       ),),
                                                     ),
                                                   ),
                                                 ),
                                                  InkWell(
                                                   onTap: (){
                                                   Navigator.push(context, MaterialPageRoute(builder: ((context) => PayNowBt24elite())));
                                                   },
                                                    child: Container(
                                                     height: 40, 
                                                     width: 120,
                                                     decoration: BoxDecoration(  
                                                       borderRadius: BorderRadius.circular(15), 
                                                       color: Colors.blue,
                                                     ),
                                                     child: Align(
                                                       alignment: Alignment.center,
                                                       child: Text("Buy Now",
                                                       //textAlign: TextAlign.center,
                                                       style: TextStyle(
                                                         fontSize: 20, 
                                                         color: Colors.white
                                                       ),),
                                                     ),
                                                                                        ),
                                                  )
                                               ],

                                               )
                                        
                                       ],
                                     ),
                                     ],
                                   ),
                                 ),
                               ),
                ),

                SizedBox(height: 10,), 

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                   padding: EdgeInsets.all(10),
                                 //height: 120,
                                 decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(20),
                                     boxShadow: [
                                       BoxShadow(blurRadius: 10, color: Colors.grey)
                                     ]),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Column(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text(
                                             "Elite Plus 2024",
                                             style: TextStyle(
                                               fontSize: 20,
                                               fontWeight: FontWeight.bold,
                                             ),
                                           ),
                                              

                                              Icon(Icons.share, size: 30,),
                                          
                                         ],
                                       ),
                                       SizedBox(
                                         height: 10,
                                       ),
                                      
                                       Container(
                                         height: 150,
                                         width: 300,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         child: Image.asset("assets/img/eplus24.png", 
                                         fit: BoxFit.cover,),
                                       ), 

                                       SizedBox(height: 10,),

                                        Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [

                                         Row(
                                           children: [

                                              
                                               Icon(  Icons.person, 
                                               size: 15, color: Colors.grey),
                                               SizedBox(width: 10,),
                                             Text("Elite 2024", 
                                           style: TextStyle(
                                               fontSize: 15, color: Colors.grey),),
                                              
                                           ],
                                         ),
                                        SizedBox(height: 10,),
                                         Row(
                                           children: [

                                            
                                               Icon(  Icons.calendar_month, 
                                               size: 15, color: Colors.grey),
                                                SizedBox(width: 10,),
                                             Text("Till Neet", 
                                           style: TextStyle(
                                               fontSize: 15, color: Colors.grey),),
                                               
                                           ],
                                         ),
              SizedBox(height: 10,),
                                         Row(
                                           children: [
                                              Icon(  Icons.star, 
                                               size: 15, color: Colors.grey),
                                                SizedBox(width: 10,),
                                             Text("****", 
                                           style: TextStyle(
                                               fontSize: 15, color: Colors.grey),),
                                              
                                              
                                           ],
                                         ),

                                         Divider(),
                                         Text("12999 ???", 
                                           style: TextStyle(
                                               fontSize: 35, color: Colors.blue),),
                                              SizedBox(height: 5,),
                                               Text("(full batch)", 
                                           style: TextStyle(
                                               fontSize: 12, color: Colors.grey),),

                                               SizedBox(height: 10,),

                                               Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [

                                                 InkWell(
                                                   onTap: (){
                                                   Navigator.push(context, MaterialPageRoute(builder: ((context) => ExploreElite24())));
                                                   },
                                                   child: Container(
                                                     height: 40, 
                                                     width: 120,
                                                     decoration: BoxDecoration(  
                                                       borderRadius: BorderRadius.circular(15), 
                                                       color: Colors.blue,
                                                     ),
                                                     child: Align(
                                                       alignment: Alignment.center,
                                                       child: Text("Explore",
                                                       //textAlign: TextAlign.center,
                                                       style: TextStyle(
                                                         fontSize: 20, 
                                                         color: Colors.white
                                                       ),),
                                                     ),
                                                   ),
                                                 ),
                                                  InkWell(
                                                    onTap: (){
                                                   Navigator.push(context, MaterialPageRoute(builder: ((context) => PayNowBt24elitePlus())));
                                                   },
                                                    child: Container(
                                                     height: 40, 
                                                     width: 120,
                                                     decoration: BoxDecoration(  
                                                       borderRadius: BorderRadius.circular(15), 
                                                       color: Colors.blue,
                                                     ),
                                                     child: Align(
                                                       alignment: Alignment.center,
                                                       child: Text("Buy Now",
                                                       //textAlign: TextAlign.center,
                                                       style: TextStyle(
                                                         fontSize: 20, 
                                                         color: Colors.white
                                                       ),),
                                                     ),
                                                                                        ),
                                                  )
                                               ],

                                               )
                                        
                                       ],
                                     ),
                                     ],
                                   ),
                                 ),
                               ),
                ),
                           



                               SizedBox(
                                 height: 10,
                               ),


          
                 
      
      
      
      
      
      
              ]
                )   
                 )
        
          ),
        ]
      ),

      );
  }
}