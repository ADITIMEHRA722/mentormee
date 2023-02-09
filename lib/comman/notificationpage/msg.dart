import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentormee/comman/bottom_bar.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottonBar(),
     // bottomNavigationBar: BottonBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 120,
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
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Image.asset(
                                      "assets/img/profile1.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Best Pullman",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "online",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "04:32 pm",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Congratulation on complrtng the first lesson",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                              Text(
                                "keep up the  good work!",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
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
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Image.asset(
                                      "assets/img/profile1.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Best Pullman",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "online",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "04:32 pm",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Congratulation on complrtng the first lesson",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                              Text(
                                "keep up the  good work!",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                          Container(
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset("assets/img/painting.png"),
                          )
                        ],
                      ),
                    ),
                  ),
              
              
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
