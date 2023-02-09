import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:mentormee/comman/course_widget.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({Key? key}) : super(key: key);

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell( 
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "My courses",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
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
                height: 90,
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
                              "Learned today",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "46min",
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
                                  "/60min",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.grey[200],
                            color: Colors.orange,
                            value: 0.6,
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CourseWidget(),
            ],
          ),
        )
      ],
    ));
  }
}
