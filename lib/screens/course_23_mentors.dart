import 'package:flutter/material.dart';
import 'package:mentormee/screens/course_enroll.dart';
import 'package:mentormee/screens/notification.dart';

List <dynamic> userlist =[
   {'name':'Hriday Pitti','pic':'assets/img/m5.JPG','subtile':'AIIMS-Bhopal\nNEET 2020:681/720\nChemistry:180/180'},
   {'name':'Rehan Khan','pic':'assets/img/m2.JPG','subtile':'AIIMS-Bhopal\nNEET 2019:645/720 \nAIIMS\nAIR:78'},
   {'name':'SanKalp Salunke','pic':'assets/img/m3.JPG','subtile':'AIIMS-Bhopal\nNEET 2020:665/720\nBiology:350/360'},
   {'name':'Alpana Kumari','pic':'assets/img/alpna.jpg','subtile':'AIIMS-Delhi\nNEET 2020:691/720\nAIR:216'},
  

];



class Course23Mentors extends StatefulWidget {
  Course23Mentors({Key? key}) : super(key: key);

  @override
  State<Course23Mentors> createState() => _Course23MentorsState();
}

class _Course23MentorsState extends State<Course23Mentors> {
  // int currentStep = 0;
  // dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Text('select your mentor',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      //centerTitle: true,
      
      //leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      elevation: 0,
      actions: [
        Row(
                          children: [
                           // InkWell(
      
                            //   onTap: (){
                            //     Navigator.push(context, MaterialPageRoute(builder: ((context) => Notifications())));
                            //   },
                              
                            //   child: Icon(Icons.notifications , size:30, color: Colors.black,)),
                            // SizedBox(width: 20,),
                       Container(
                        height: 46, 
                        width: 46,
                              decoration: BoxDecoration(
                                
                                  shape: BoxShape.circle,
                                 // borderRadius: BorderRadius.circular(12)
                                 ),
                             
                              child:  Image.asset(
                                  "assets/img/Avatar.png",
                                  fit: BoxFit.cover,
                                  ),
                       
                     
                              
                            ),
                          ],
                        )
      ],
      ),

          body:   ListView.builder(
              itemCount: userlist.length,
              itemBuilder: (BuildContext context,i){
              return Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  child:Column(
                    children: [
                      Row(children: [
                         Image.asset(userlist[i]['pic'],
                          height: 90,width: 90,fit:BoxFit.fill,),
                        
                        //  SizedBox(width: 5,),
                          
                           Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left:15.0),
                               child: Text(userlist[i]['name'].toString(),
                               style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                             ),
                             SizedBox(height: 5,),

                             Padding(
                              padding:EdgeInsets.only(left: 15),
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