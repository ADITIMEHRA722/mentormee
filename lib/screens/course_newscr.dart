


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:mentormee/screens/chat.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/pay_now.dart';

class CourseNewScr extends StatefulWidget {
  const CourseNewScr({super.key});

  @override
  State<CourseNewScr> createState() => _CourseNewScrState();
}

class _CourseNewScrState extends State<CourseNewScr> with TickerProviderStateMixin {
  

  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(
  length: 3, vsync: this, initialIndex: 0);

    return Scaffold(
      backgroundColor: Colors.white,  
      body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.all(15.0),
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
                  child: Text("Choice your course", 
                  style: TextStyle( 
                      fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),),
                ),
              ),

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
                  Tab(
                    text: "Popular",
                  ),
                  Tab(
                    text: "New",
                  ),
                 
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
                   
                  //  SizedBox(height: 10,),



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
                                  "Elite 2023",
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
                              child: Image.asset("assets/img/pt0.jpg", 
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
                                  Text("Elite 2023", 
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
                                  Text("***", 
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),),
                                   
                                   
                                ],
                              ),

                              Divider(),
                              Text("3499 ₹", 
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
                                        onTap: () {

                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Chatscn(),));
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
                                          Navigator.push(context, MaterialPageRoute(builder: ((context) => PayNow() )));
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
              





                   
                    SizedBox(height: 5,),
                    
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
                                  "Elite Plus 2023",
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
                              child: Image.asset("assets/img/free.png", 
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
                                  Text("Elite plus 2023", 
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
                                  Text("***", 
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),),
                                   
                                   
                                ],
                              ),

                              Divider(),
                              Text("\$ 190", 
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

                                      Container(
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
                                       Container(
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
              


                       SizedBox(height: 5,), 
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
                                  "Yakeen fast track course",
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
                              child: Image.asset("assets/img/images.jpg", 
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
                                  Text("About this batch", 
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
                                  Text("About this batch", 
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
                                  Text("About this batch", 
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),),
                                   
                                   
                                ],
                              ),

                              Divider(),
                              Text("\$ 190", 
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

                                      Container(
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
                                       Container(
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



                   
                  ],
                ),
              ),


              ListView(
                children: [
                  Align(
                      alignment: Alignment.center, child: Text("Painting"))
                ],
              ),
              ListView(
                children: [
                  Align(
                      alignment: Alignment.center, child: Text("Painting"))
                ],
              ),
              
            ]
            ),
          ),
        
               


              ]
      ),
       ),
      )
    );
  }
}