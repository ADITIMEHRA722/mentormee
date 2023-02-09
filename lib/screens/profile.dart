import 'package:flutter/material.dart';

class ProfileS extends StatefulWidget {
  ProfileS({Key? key}) : super(key: key);

  @override
  State<ProfileS> createState() => _RewardscnState();
}

class _RewardscnState extends State<ProfileS> {
  // int currentStep = 0;
  // dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Profile Settings',
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: InkWell(
      onTap: (){},
      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),

       elevation: 0,
      ),

      body: SingleChildScrollView(child: 
      Column(children: [
       Padding(
         padding: EdgeInsets.only(top: 60,left: 10),
         child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 197, 194, 194),
          borderRadius: BorderRadius.circular(90),
          ),
        child:Center(child: Text('Photo',style: TextStyle(color: Colors.black),)),
         ),
       ),

       Padding(
         padding:EdgeInsets.only(top: 10,left: 10),
         child: Text('Change profile picture',style: TextStyle(fontSize: 18,
         color: Colors.blue,fontWeight: FontWeight.bold),),
       ),



       SizedBox(height: 50),

       Padding(
         padding: EdgeInsets.only(left: 30,right: 20),
         child: TextFormField(
          decoration: InputDecoration(hintText: 'New Name'),
         ),
       ),

       Padding(
         padding: EdgeInsets.only(left: 30,right: 20,top: 20),
         child: TextFormField(
          decoration: InputDecoration(hintText: 'Email'),
         ),
       ),

       Padding(
         padding: EdgeInsets.only(left: 30,right: 20,top: 20),
         child: TextFormField(
          decoration: InputDecoration(hintText: 'Password'),
         ),
       ),

       SizedBox(height: 80,),

       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Padding(
          padding:EdgeInsets.only(left: 50),
          child: Container(
            height: 50,
            width: 100,
            color: Colors.blue,
            child: Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
          ),
        ),

          SizedBox(width: 5,),

           Padding(
           padding:EdgeInsets.only(right: 50),
           child: Container(
            height: 50,
            width: 100,
            color: Colors.blue,
            child: Center(child: Text('Save',style: TextStyle(color: Colors.white),)),
        ),
         )
       ],)
       ],)
       ),





    );}}