import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:mentormee/screens/account.dart';
import 'package:mentormee/screens/batch.dart';
import 'package:mentormee/screens/batch/batch_23_24_for_bt.dart';
import 'package:mentormee/screens/course/batch23_24.dart';
import 'package:mentormee/screens/batchlist2.dart';
import 'package:mentormee/screens/batchmentor.dart';
import 'package:mentormee/screens/course.dart';
import 'package:mentormee/screens/course_23_mentors.dart';
import 'package:mentormee/screens/final_home.dart';
import 'package:mentormee/screens/home.dart';
import 'package:mentormee/screens/mentor.dart';
import 'package:mentormee/screens/my_courses.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/select_mentors.dart';
import 'package:mentormee/screens/test_s.dart';
import 'package:mentormee/screens/testseris.dart';

import 'package:mentormee/screens/toppers_talk.dart';

class BottonBar extends StatefulWidget {

  const BottonBar({Key? key}) : super(key: key);
  

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {

  int currentIndex = 0 ; 
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //currentIndex = index;
  }

  // final List<Widget> pages = [
    
  //   Home(),
  //   TestS(), 
  //   Batch_23_24_For_bt(), 
  //   SelectMentor(), 
  //   ToppersTalk(),
    
  // ];

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

   
    return  Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        // color: Colors.white,
        child: Stack(children: [
         
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 80),
            painter: BNBCustomPainter(),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FinalHome()));
                    //  setState(() {
                    // //currentScreen= Batch_23_24_For_bt();
                    // currentIndex=0;
                    // });
              },
              child: Icon(
                Icons.home,
//color: Colors.blue,
               color: currentIndex ==0 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        
          Container(
            width: size.width,
            height: 80,
            child:
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        
        
              IconButton(
        
                onPressed: () {
                  
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestS()));
        
                  //     setState(() {
                  //   //currentScreen= Batch_23_24_For_bt();
                  //   currentIndex=0;
                  // });
                
                },
                icon: Icon(
                  Icons.book,
                 // color: Colors.blue,  
                   color: currentIndex == 1 ? Colors.blue : Colors.grey,
                ),
              ),
        
        
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Batch_23_24_For_bt()));
        
                    //      setState(() {
                    // //currentScreen= Batch_23_24_For_bt();
                    // currentIndex=1;
                 // });
                },
                icon: Icon(
                  Icons.group,
                  //color: Colors.blue,
                   color: currentIndex ==2 ? Colors.blue : Colors.grey,
        
                ),
              ),
              
              Container(
                width: size.width * 0.20,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SelectMentor()));
        
                      
                    //      setState(() {
                    // //currentScreen= Batch_23_24_For_bt();
                    // currentIndex=2;
                   // });
        
                },
                icon: Icon(
                  Icons.person,
                  //color: Colors.blue,
                  color: currentIndex ==3? Colors.blue : Colors.grey,
                  
                ),
              ),
        
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToppersTalk()));
        
                      
                    //      setState(() {
                    // //currentScreen= Batch_23_24_For_bt();
                    // currentIndex=3;
                    // });
                },
        
                icon: Icon(
                  Icons.data_exploration_outlined,
                  //color: Colors.blue,
        
                  color: currentIndex ==4? Colors.blue : Colors.grey,
                ),
              ),
            ]),
          )
        ]),
      );
    

    
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(
        Offset(
          size.width * 0.60,
          20,
        ),
        radius: Radius.circular(10.0),
        clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


  
