import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:mentormee/comman/bottom_bar_2.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/screens/account.dart';
import 'package:mentormee/screens/batch.dart';
import 'package:mentormee/screens/batch/batch_23_24_for_bt.dart';
import 'package:mentormee/screens/chat.dart';
import 'package:mentormee/screens/course.dart';
import 'package:mentormee/screens/course_23_24.dart';
import 'package:mentormee/screens/course_enroll.dart';
import 'package:mentormee/screens/course_newscr.dart';
import 'package:mentormee/screens/course_video.dart';
import 'package:mentormee/screens/final_home.dart';
import 'package:mentormee/screens/home.dart';
import 'package:mentormee/screens/mentor_new.dart';
import 'package:mentormee/screens/my_courses.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/pay_now.dart';
import 'package:mentormee/screens/product.dart';
import 'package:mentormee/screens/result.dart';
import 'package:mentormee/screens/splash.dart';
import 'package:mentormee/screens/test_s.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mentor me',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Splashscn(),
    );
  }
}

