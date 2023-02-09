
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/screens/course_video.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/result.dart';
import 'package:mentormee/screens/toppers_talk_video.dart';
import 'package:url_launcher/link.dart';



class ToppersTalk extends StatefulWidget {
  const ToppersTalk({Key? key}) : super(key: key);

  @override
  State<ToppersTalk> createState() => _ToppersTalkState();
}

class _ToppersTalkState extends State<ToppersTalk>with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

  TabController _tabController = TabController(
  length: 1, vsync: this, initialIndex: 0);

  
  
  // final TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this);
  // }


    return Scaffold(
    //bottomNavigationBar: BottomBar1(),
    // bottomNavigationBar: BottonBar(),
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
                   Text("Topeers Talk" , style: TextStyle(
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
                    hintText: "Find ", 
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
        
              // Container(
              //  // height: 200,
              //   child: Stack(children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
        
              //       Container(
        
              //         height: 80, 
              //         width: 160,
              //         decoration: BoxDecoration(
              //           borderRadius:BorderRadius.circular(15),
              //           color: Colors.blue.shade200,
              //            ),
        
              //            child: Padding(
              //              padding: const EdgeInsets.only(left:60,top:40,bottom:12.0),
              //              child: Container(
                            
              //               padding: EdgeInsets.all(5),
              //               decoration: BoxDecoration(
              //           borderRadius:BorderRadius.only(
              //              bottomLeft: Radius.circular(12),
              //              topLeft: Radius.circular(12), 
              //           ),
              //           color: Colors.white.withOpacity(0.5),
              //              ),
              //               child: Align(
                              
              //                 alignment: Alignment.bottomRight,
              //                 child: Text("Language", 
              //                 style: TextStyle(
        
              //                   color: Colors.blue,   
              //                   fontSize: 14, 
              //                   fontWeight: FontWeight.w600
        
              //                 ),))),
              //            ),
                      
              //       ), 
        
              //        Container(
        
              //         height: 80, 
              //         width: 160,
              //         decoration: BoxDecoration(
              //           borderRadius:BorderRadius.circular(15),
              //           color: Colors.orange.shade200,
              //            ),
        
              //            child: Padding(
              //              padding: const EdgeInsets.only(left:60,top:40,bottom:12.0),
              //              child: Container(
                            
              //               padding: EdgeInsets.all(5),
              //               decoration: BoxDecoration(
              //           borderRadius:BorderRadius.only(
              //              bottomLeft: Radius.circular(12),
              //              topLeft: Radius.circular(12), 
              //           ),
              //           color: Colors.white.withOpacity(0.5),
              //              ),
              //               child: Align(
                              
              //                 alignment: Alignment.bottomRight,
              //                 child: Text("Painting", 
              //                 style: TextStyle(
        
              //                   color: Colors.purple,   
              //                   fontSize: 14, 
              //                   fontWeight: FontWeight.w600
        
              //                 ),))),
              //            ),
                      
              //       ), 
        
                   
              //     ],
              //   ),
        
              //   Container(
              //    // color: Colors.red,
              //       child:  Align(
              //         alignment: Alignment.topCenter,
              //         child: Row(
              //          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //            children: [
                          
              //             Container(
              //               height: 80, 
              //               width: 100,
              //               child: Image.asset("assets/img/lang.png",
              //               fit: BoxFit.cover,) ,
              //             ), 
              //             SizedBox(width: 60,),
                        
              //             Container(
              //               height: 80, 
              //               width: 100,
              //               child: Image.asset("assets/img/painting.png",
              //               fit: BoxFit.cover,) ,
              //             )
                    
              //           ],),
              //       )
              //       )
                
        
                 
              //   ],
              //   ), 
              // ),


              // SizedBox(height: 15,),
               
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Container(
              //     child: Text("Choice your course", 
              //     style: TextStyle( 
              //         fontWeight: FontWeight.w600,
              //       fontSize: 18,
              //     ),),
              //   ),
              // ), 
        
              Container(
            padding: EdgeInsets.only(top: 10, right: 15, left: 15),
            child: TabBar(
              
                controller: _tabController,
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                
                labelPadding: EdgeInsets.only(left: 15, right: 15),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Creates border
                    color: Colors.blue),
                   
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  // Tab(
                  //   text: "Popular",
                  // ),
                  // Tab(
                  //   text: "New",
                  // ),
                 
                ]),
          ),
          
        
          SizedBox(
            height: 10,
          ),
          Expanded(
            // flex: 2,
            child: TabBarView(
              
              controller: _tabController, children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: ListView(
                  
                  scrollDirection: Axis.vertical,
                  children: [
                   
                    SizedBox(height: 10,),

   

                       Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, ),
                        //width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 20,
                                  color: Colors.grey.withOpacity(0.6)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            
                            children: [
                             
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 80,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                         //  Navigator.push(context, MaterialPageRoute(builder:(context)=>ToppersVideo()));
                                      },
                                      child: Image.asset("assets/img/tk3.jpg" , 
                                      fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Topper's Talk",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),


                                       Text(
                                        "380 to 665 marks in Last 2 \n"
                                        "months in NEET | \n"
                                        "Real Inspiring story😱 ",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),

                                      Link(
                                        target:LinkTarget.self,
                                        uri:Uri.parse("https://youtu.be/RdjkjwkHFGM"), 

                                        builder: ((context, followLink) => InkWell(
                                          onTap:followLink,
                                          child: Container(
                                            child: Text("Click", style: TextStyle(color: Colors.blue),),
                                            
                                          ),
                                        )),
                                      ),
                                      
                                      
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

                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, ),
                        //width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 20,
                                  color: Colors.grey.withOpacity(0.6)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            
                            children: [
                             
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 80,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                         //  Navigator.push(context, MaterialPageRoute(builder:(context)=>ToppersVideo()));
                                      },
                                      child: Image.asset("assets/img/tk1.jpg" , 
                                      fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Topper's Talk",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),

                                      Text(
                                        "How he Increased 200+\n" 
                                        "marks in Last 40 days ? AIR\n" 
                                        "78 (AIIMS)😱| Real strategy",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),

                                      Link(
                                        target:LinkTarget.self,
                                        uri:Uri.parse("https://youtu.be/BYzzpkXMBMs"), 

                                        builder: ((context, followLink) => InkWell(
                                          onTap:followLink,
                                          child: Container(
                                            child: Text("Click", style: TextStyle(color: Colors.blue),),
                                            
                                          ),
                                        )),
                                      ),
                                      
                                      
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
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, ),
                        //width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 20,
                                  color: Colors.grey.withOpacity(0.6)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            
                            children: [
                             
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 80,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                         //  Navigator.push(context, MaterialPageRoute(builder:(context)=>ToppersVideo()));
                                      },
                                      child: Image.asset("assets/img/tk2.jpg" , 
                                      fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Topper's Talk",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),


                                       Text(
                                        "Cracked AIIMS Delhi in 5th\n"
                                        "Attempt |691/720 marks🔥 ",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Link(
                                        target:LinkTarget.self,
                                        uri:Uri.parse("https://youtu.be/VyupfhSVvBM"), 

                                        builder: ((context, followLink) => InkWell(
                                          onTap:followLink,
                                          child: Container(
                                            child: Text("Click", style: TextStyle(color: Colors.blue),),
                                            
                                          ),
                                        )),
                                      ),
                                      
                                      
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



                   
                  ],
                ),
              ),


            
              
            ]
            ),
          ),
        
               
              
        
            ],
          ),
        
        ), 



        ),
         
        
    );
  }
}

  // Positioned(
              
  //             bottom: 0, 

  //             left: 0,

  //             child: BottonBar(),

  //             )


  



