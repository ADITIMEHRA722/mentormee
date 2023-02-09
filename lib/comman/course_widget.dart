import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.84,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
       // for (int i = 1; i < 3; i++)
        
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink.shade100.withOpacity(0.6),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Elite 2023",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // Text(
                    //   "2023",
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    color: Colors.pink,
                    value: 0.3,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "10",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "/",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "24",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(50)),
                        child:
                            Icon(Icons.play_arrow_rounded, color: Colors.white),
                      ),



                      
                    ],
                  ),
                )
              ],
            ),
          ),
          
          //   Container(
          //   padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     color: Colors.blue.shade100.withOpacity(0.6),
          //   ),
          //   child: Column(
          //     crossAxisAlignment:CrossAxisAlignment.start,
          //     children: [
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             "Physics",
          //             style: TextStyle(
          //               fontSize: 18,
          //               fontWeight: FontWeight.w700,
          //             ),
          //           ),
          //           // Text(
          //           //   "",
          //           //   style: TextStyle(
          //           //     fontSize: 18,
          //           //     fontWeight: FontWeight.w700,
          //           //   ),
          //           // )
          //         ],
          //       ),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       Container(
          //         width: 200,
          //         alignment: Alignment.centerLeft,
          //         child: LinearProgressIndicator(
          //           backgroundColor: Colors.grey[200],
          //           color: Colors.blue,
          //           value: 0.4,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 10,
          //       ),
          //       Align(
          //         alignment: Alignment.centerLeft,
          //         child: Text(
          //           "Completed",
          //           style: TextStyle(
          //             fontSize: 15,
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.symmetric(vertical: 10),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Row(
          //               children: [
          //                 Text(
          //                   "12",
          //                   style: TextStyle(
          //                     fontSize: 18,
          //                     color: Colors.black,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 Text(
          //                   "/",
          //                   style: TextStyle(
          //                     fontSize: 15,
          //                     color: Colors.black,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 Text(
          //                   "18",
          //                   style: TextStyle(
          //                     fontSize: 12,
          //                     color: Colors.black,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Container(
          //               height: 40,
          //               width: 40,
          //               decoration: BoxDecoration(
          //                   color: Colors.blue,
          //                   borderRadius: BorderRadius.circular(50)),
          //               child:
          //                   Icon(Icons.play_arrow_rounded, color: Colors.white),
          //             ),



                      
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          

          //   Container(
          //   padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     color: Colors.teal.shade100.withOpacity(0.6),
          //   ),
          //   child: Column(
          //     children: [
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             "Visual Design",
          //             style: TextStyle(
          //               fontSize: 18,
          //               fontWeight: FontWeight.w700,
          //             ),
          //           ),
          //           // Text(
          //           //   "",
          //           //   style: TextStyle(
          //           //     fontSize: 18,
          //           //     fontWeight: FontWeight.w700,
          //           //   ),
          //           // )
          //         ],
          //       ),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       Container(
          //         width: 200,
          //         alignment: Alignment.centerLeft,
          //         child: LinearProgressIndicator(
          //           backgroundColor: Colors.grey[200],
          //           color: Colors.teal,
          //           value: 0.4,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 10,
          //       ),
          //       Align(
          //         alignment: Alignment.centerLeft,
          //         child: Text(
          //           "Completed",
          //           style: TextStyle(
          //             fontSize: 15,
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.symmetric(vertical: 10),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Row(
          //               children: [
          //                 Text(
          //                   "10",
          //                   style: TextStyle(
          //                     fontSize: 18,
          //                     color: Colors.black,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 Text(
          //                   "/",
          //                   style: TextStyle(
          //                     fontSize: 15,
          //                     color: Colors.black,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 Text(
          //                   "16",
          //                   style: TextStyle(
          //                     fontSize: 12,
          //                     color: Colors.black,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Container(
          //               height: 40,
          //               width: 40,
          //               decoration: BoxDecoration(
          //                   color: Colors.teal,
          //                   borderRadius: BorderRadius.circular(50)),
          //               child:
          //                   Icon(Icons.play_arrow_rounded, color: Colors.white),
          //             ),



                      
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          
          
     
     
      ],
    );
  }
}
