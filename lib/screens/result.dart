import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:mentormee/screens/product.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: 4, vsync: this, initialIndex: 0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(children: [Icon(CupertinoIcons.back)]),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.cancel,
                    size: 22,
                    color: Colors.grey,
                  ),
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
                      text: "Visual identity",
                    ),
                    Tab(
                      text: "Painting",
                    ),
                    Tab(
                      text: "Coding",
                    ),
                    Tab(
                      text: "Writing",
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Results",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                     
                      SizedBox(height: 10,),


                      InkWell(
                         onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Product()));
                    },
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
                                      child: Image.asset("assets/img/a1.jpg"),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Product Dedign v1.0",
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
                                            Container(
                                              height: 20,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                              child: Text(
                                                "16 hours",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.red),
                                              ),
                                            )
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
                      
                       Container(
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
                                    child: Image.asset("assets/img/a1.jpg"),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Product Dedign ",
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
                                          Container(
                                            height: 20,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Text(
                                              "14 hours",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Colors.red),
                                            ),
                                          )
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
                         
                         SizedBox(height: 10,), 
                           Container(
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
                                    child: Image.asset("assets/img/a1.jpg"),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Product Dedign ",
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
                                          Container(
                                            height: 20,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Text(
                                              "14 hours",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Colors.red),
                                            ),
                                          )
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
      ),
    );
  }
}
