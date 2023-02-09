import 'package:flutter/material.dart';
import 'package:mentormee/screens/setting.dart';

class PassChange extends StatefulWidget {
  PassChange({Key? key}) : super(key: key);

  @override
  State<PassChange> createState() => _RewardscnState();
}

class _RewardscnState extends State<PassChange> {
  // int currentStep = 0;
  // dynamic titleName ;

       @override
       Widget build(BuildContext context) {
       return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Password change',
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: InkWell(
      onTap: (){},
      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
       elevation: 0,
      ),


   body: Column(children: [



     Padding(
         padding: EdgeInsets.only(left: 30,right: 20,top: 120),
         child: TextFormField(
          decoration: InputDecoration(hintText: 'Enter old password'),
          obscureText: true,
         ),
       ),

       SizedBox(height: 20,),

       Padding(
         padding: EdgeInsets.only(left: 30,right: 20),
         child: TextFormField(
          decoration: InputDecoration(hintText: 'Enter new password',
          suffixIcon: Icon(Icons.remove_red_eye),),
          obscureText: true,
         ),
       ),
       SizedBox(height: 20,),

       Padding(
         padding: EdgeInsets.only(left: 30,right: 20),
         child: TextFormField(
          decoration: InputDecoration(hintText: 'Same',
          suffixIcon: Icon(Icons.remove_red_eye),
          ),
          obscureText: true,
         ),
       ),


       SizedBox(height: 60,),

       InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => SettingS())));
        },
         child: Container(height: 60,
         width: 320,
         decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
         ),
         child: Center(child: Text('Reset',style: TextStyle(color: Colors.white,
         fontSize: 20),)),),
       )

   ],),




       );}}