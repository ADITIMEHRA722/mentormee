import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:mentormee/comman/course_widget.dart';
import 'package:mentormee/comman/progress_widget.dart';

class TestProgress extends StatefulWidget {
  const TestProgress({Key? key}) : super(key: key);

  @override
  State<TestProgress> createState() => _TestProgressState();
}

class _TestProgressState extends State<TestProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Progress',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      elevation: 0,
    ),
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [


              
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Icon(Icons.arrow_back_ios),
              //     SizedBox(
              //       width: 60,
              //     ),
              //     Text(
              //       "Progress",
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //   ],
              // ),

             Container(
          alignment:Alignment.topCenter,
          margin: EdgeInsets.only(top: 20),
          child: SizedBox(height: 150,
          width: 150,
          child: CircularProgressIndicator(
          backgroundColor: Color.fromARGB(255, 197, 196, 196),
          color: Colors.blue,
          strokeWidth: 12,
          value: 0.4,
          
              
          )
          
          ),
          ),

              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          // blurRadius: 10,
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75)),
                    ]),
                height: 80,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Day 1",
                              style: TextStyle(
                                //color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          height: 22,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "1 out of 3 task completed !",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child:Icon(Icons.arrow_drop_down),
                                ),
                              
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 500,
                        //   child: LinearProgressIndicator(
                        //     backgroundColor: Colors.grey[200],
                        //     color: Colors.orange,
                        //     value: 0.6,
                        //   ),
                        // )
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ProgressWidget(),
            ],
          ),
        )
      ],
    ));
  }
}
