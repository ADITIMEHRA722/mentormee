import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:mentormee/screens/course_video.dart';
import 'package:mentormee/screens/pay_now.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          // best seller
          Container(
            decoration:
                BoxDecoration(color: Colors.pink.shade200.withOpacity(0.2)),
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // icon
                        Row(
                          children: [Icon(CupertinoIcons.back)],
                        ),

                        SizedBox(
                          height: 20,
                        ), // text

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 30,
                              width: 100,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                image: new AssetImage("assets/img/best.png"),
                                fit: BoxFit.fill,
                              ))),
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Product",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Design v1.0 ",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )),
          ),

          // product design v1.0
          Padding(
            padding: const EdgeInsets.only(
              top: 200,
            ),
            child: SingleChildScrollView(
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product Design v1.0",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$74.00",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "6h 14min 24 Lesson",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "About this course",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "sed ut perspiciats unde  amin is",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // bottom sheet
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      // height: 5,
                      // width: 20,
                      child: Icon(
                        Icons.arrow_drop_up_sharp,
                        size: 30,
                      ),
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: false,
                        enableDrag: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        )),
                        context: context,
                        builder: (context) => buildSheet(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildSheet() => Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              // height: 5,
              // width: 20,
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseVideo()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "01",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome to the Course",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "6:10 mins",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.check_circle_outline_rounded,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_circle_fill_rounded,
                            size: 50,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "02",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Process overview",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "6:10 mins",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          size: 50,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "03",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discovery",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "6:10 mins",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.lock,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.grey.withOpacity(0.4)),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.pink.shade200.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.star_border_outlined,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PayNow()));
                      },
                      child: Container(
                        height: 50,
                        // width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      );
}
