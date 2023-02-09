import 'package:flutter/material.dart';
import 'package:mentormee/screens/course_newscr.dart';

class MentorsDetail extends StatefulWidget {
  MentorsDetail({Key? key}) : super(key: key);

  @override
  State<MentorsDetail> createState() => _MentorsDetailState();
}

class _MentorsDetailState extends State<MentorsDetail> {
  // int currentStep = 0;
  // dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Meet Our Mentors',
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      elevation: 0,
      ),

      body: Column(children: [
        Padding(
          padding:EdgeInsets.only(top: 80,left: 40),
          child: Container(
            height: 300,
            width: 300,
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CourseNewScr(),));
            },
            child: Image.asset('assets/img/a5.png',fit: BoxFit.fill,)),),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text('Vedant Joshi',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 3,),
        Padding(
          padding:EdgeInsets.only(left: 50),
          child: Text('Neet Score:696',
          style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 3,),
        Text('             Year:2021',style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 3,),
        Text('             Rank:237',style: TextStyle(fontWeight: FontWeight.bold),)
      ],),

      );
  }}