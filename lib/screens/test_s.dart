
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/result.dart';
import 'package:mentormee/screens/test_progress.dart';


class TestS extends StatefulWidget {
  const TestS({Key? key}) : super(key: key);

  @override
  State<TestS> createState() => _TestSState();
}

class _TestSState extends State<TestS>with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

  // TabController _tabController = TabController(
  // length: 3, vsync: this, initialIndex: 0);

  
  
  // final TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this);
  // }


    return Scaffold(
     //  bottomNavigationBar: BottonBar(),
    // bottomNavigationBar: BottomBar1(),
    
      backgroundColor: Colors.white,
      body: ListView(
scrollDirection: Axis.vertical,
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
                   Text("Test Series" , style: TextStyle(
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
          
                 
          
               
               
          
               
            
          
            SizedBox(
              height: 10,
            ),
            
        
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                      
                      scrollDirection: Axis.vertical,
                      children: [
                       
                        SizedBox(height: 10,),
                
                
                        Container(
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
                                          "Test 1",
                                          style: TextStyle(
                                            fontSize: 17, 
                                          color: Colors.grey
                                          ),
                                        ),
                                        
                                      ]
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                       
                       
                        SizedBox(height: 10,),
                        
                            Container(
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
                                          "Test 2",
                                          style: TextStyle(
                                            fontSize: 17, 
                                          color: Colors.grey
                                          ),
                                        ),
                                        
                                      ]
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                           SizedBox(height: 10,), 
      
      
                              Container(
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
                                          "Test 3",
                                          style: TextStyle(
                                            fontSize: 17, 
                                          color: Colors.grey
                                          ),
                                        ),
                                        
                                      ]
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                
                
                        SizedBox(
                          height: 10,
                        ),
      
                            Container(
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
                                          "Test 4",
                                          style: TextStyle(
                                            fontSize: 17, 
                                          color: Colors.black
                                          ),
                                        ),
                                        
                                      ]
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                       
      
                        SizedBox(height: 10,),


                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TestProgress(),));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              // blurRadius: 10,
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)),
                        ]),
                    height: 90,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom:8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Progress",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                height: 30,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "3",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "/4",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                                ],
                              ),
                            ),
                            
                            SizedBox(
                              width: 500,
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.grey[200],
                                color: Colors.blue,
                                value: 0.5,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              
                
                
                       
                    
                          ]
                        ),
                ), 
         
                  
                 
                
                  
              ],
            ),
            
      
           // SizedBox(height: 20,),
      
             
          
              ]
            )
            )
            ),
     
     
],
    
       
      )
      
         
        
    );
  }
}

  // Positioned(
              
  //             bottom: 0, 

  //             left: 0,

  //             child: BottonBar(),

  //             )


  



