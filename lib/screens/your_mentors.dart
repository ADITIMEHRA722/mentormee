import 'package:flutter/material.dart';
import 'package:mentormee/screens/course_enroll.dart';

List <dynamic> userlist =[
   {'name':'Hriday Pitti','pic':'assets/img/m5.JPG','subtile':'AIIMS-Bhopal\nNEET 2020:681/720\nChemistry:180/180'},
   {'name':'Rehan Khan','pic':'assets/img/m2.JPG','subtile':'AIIMS-Bhopal\nNEET 2019:645/720 \nAIIMS\nAIR:78'},
   {'name':'SanKalp Salunke','pic':'assets/img/m3.JPG','subtile':'AIIMS-Bhopal\nNEET 2020:665/720\nBiology:350/360'},
   {'name':'Alpana Kumari','pic':'assets/img/alpna.jpg','subtile':'AIIMS-Delhi\nNEET 2020:691/720\nAIR:216'},
  

];



class YourMentors extends StatefulWidget {
  YourMentors({Key? key}) : super(key: key);

  @override
  State<YourMentors> createState() => _YourMentorsState();
}

class _YourMentorsState extends State<YourMentors> {
  // int currentStep = 0;
  // dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('course',
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      ),

          body: ListView.builder(
          itemCount: userlist.length,
          itemBuilder: (BuildContext context,i){
          return Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              child:Column(
                children: [
                  Row(children: [
                     Image.asset(userlist[i]['pic'],
                      height: 100,width: 100,fit:BoxFit.fill,),
                    
                    //  SizedBox(width: 5,),
                      
                       Column(
                       children: [
                         Text(userlist[i]['name'].toString(),
                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         SizedBox(height: 5,),
                         Padding(
                          padding:EdgeInsets.only(left: 3),
                          child: Text(userlist[i]['subtile'].toString()),
                         ),
                       ],
                     ),

                     SizedBox(width: 90,),
                     InkWell(
                      onTap: (){

                                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseEnroll(),));
                              },
                      
                      child: Icon(Icons.arrow_forward_ios)),
                  ],)
                ],)
               
              
            ),
            );
            }),
           );
          }}
          