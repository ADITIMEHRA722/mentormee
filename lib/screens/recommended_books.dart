
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/result.dart';


class RecommendedBooks extends StatefulWidget {
  const RecommendedBooks({Key? key}) : super(key: key);

  @override
  State<RecommendedBooks> createState() => _RecommendedBooksState();
}

class _RecommendedBooksState extends State<RecommendedBooks>with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

  TabController _tabController = TabController(
  length: 3, vsync: this, initialIndex: 0);

  
  
  // final TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this);
  // }


    return Scaffold(
       bottomNavigationBar: BottonBar(),
     // bottomNavigationBar: BottomBar1(),
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
                     Text("Recommended Books" , style: TextStyle(
                      fontSize: 20, 
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
                      height: 40, 
                      width: 40,
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
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Result()));
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
          
                 SizedBox(height: 20,),

                  
             


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, ),
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
                              width: 60,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                              child: Image.asset("assets/img/a1.jpg" , 
                              fit: BoxFit.cover,),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NCETR",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Robertson Connie",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$190",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    // Container(
                                    //   height: 20,
                                    //   width: 70,
                                    //   decoration: BoxDecoration(
                                    //     color: Colors.grey.shade200,
                                    //     borderRadius: BorderRadius.circular(15),
                                    //   ),
                                    //   // child: Text(
                                    //   //   "16 hours",
                                    //   //   textAlign: TextAlign.center,
                                    //   //   style: TextStyle(color: Colors.red),
                                    //   // ),
                                    // )
                                  ],
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
                 padding: const EdgeInsets.symmetric(horizontal: 10, ),
                 child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, ),
                  //height: 100,
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
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/img/a1.jpg", 
                              fit: BoxFit.cover,),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NCERT ",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Webb londan",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$250",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    // Container(
                                    //   height: 20,
                                    //   width: 70,
                                    //   decoration: BoxDecoration(
                                    //     color: Colors.grey.shade200,
                                    //     borderRadius: BorderRadius.circular(15),
                                    //   ),
                                    //   // child: Text(
                                    //   //   "14 hours",
                                    //   //   textAlign: TextAlign.center,
                                    //   //   style: TextStyle(color: Colors.red),
                                    //   // ),
                                    // )
                                  ],
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
                     padding: EdgeInsets.symmetric(horizontal: 10, ),
                     child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, ),
                //height: 100,
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
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/img/a1.jpg", 
                              fit: BoxFit.cover,),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NCERT ",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Web kely",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$250",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    // Container(
                                    //   height: 20,
                                    //   width: 70,
                                    //   decoration: BoxDecoration(
                                    //     color: Colors.grey.shade200,
                                    //     borderRadius: BorderRadius.circular(15),
                                    //   ),
                                    //   // child: Text(
                                    //   //   "14 hours",
                                    //   //   textAlign: TextAlign.center,
                                    //   //   style: TextStyle(color: Colors.red),
                                    //   // ),
                                    // )
                                  ],
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
      
      
      
          ),
        ]
      ),
         
        
    );
  }
}

  // Positioned(
              
  //             bottom: 0, 

  //             left: 0,

  //             child: BottonBar(),

  //             )


  



