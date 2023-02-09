import 'package:flutter/material.dart';
import 'package:mentormee/screens/course_23_mentors.dart';
import 'package:mentormee/screens/home.dart';
import 'package:mentormee/screens/mentor.dart';

class Purchase extends StatefulWidget {
  Purchase({Key? key}) : super(key: key);

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
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
                    context, MaterialPageRoute(builder: (context) => Mentorscn()));
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
