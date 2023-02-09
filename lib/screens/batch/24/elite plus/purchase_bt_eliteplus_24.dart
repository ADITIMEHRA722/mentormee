import 'package:flutter/material.dart';
import 'package:mentormee/screens/batch/23/Elite%20Plus/mentor_enroll_ab_eliteplus.dart';
import 'package:mentormee/screens/batch/23/elite/mentor_bt_23_elite.dart';
import 'package:mentormee/screens/batch/24/elite%20plus/mentor_enroll_ab_eliteplus_24.dart';
import 'package:mentormee/screens/course_23_mentors.dart';
import 'package:mentormee/screens/home.dart';
import 'package:mentormee/screens/mentor.dart';

class PurchaseBtElitePlus24 extends StatefulWidget {
  PurchaseBtElitePlus24({Key? key}) : super(key: key);

  @override
  State<PurchaseBtElitePlus24> createState() => _PurchaseBtEliteState();
}

class _PurchaseBtEliteState extends State<PurchaseBtElitePlus24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 280),
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Successful Purchase!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MentorBt24ElitePlus()));
              },
              child: Container(
                height: 55,
                width: 310,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  'Start Learning',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
