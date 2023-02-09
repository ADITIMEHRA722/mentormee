import 'package:flutter/material.dart';

class SettingS extends StatefulWidget {
  SettingS({Key? key}) : super(key: key);

  @override
  State<SettingS> createState() => _SettingSState();
}

class _SettingSState extends State<SettingS> {
  // int currentStep = 0;
  // dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Settings',
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: InkWell(
      onTap: (){},
      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      elevation: 0,
      ),


       body: SingleChildScrollView(
         child: Column(children: [
         Padding(
           padding: EdgeInsets.only(top: 40,left: 20),
           child: Row(
             children: [
               Text('Membership',style: TextStyle(fontSize: 15),),
             ],
           ),
         ),
         Padding(
           padding: EdgeInsets.only(left: 20,top: 20),
           child: Row(children: [
           Text('Free membership user'),
           SizedBox(width: 110,),
           InkWell(
            onTap: (){},
             child: Container(height: 30,width: 80,color: Colors.grey,
             child: Center(child: Text('upgrade')),),
           )
           ],),
         ),
         
         Padding(
           padding:EdgeInsets.only(top: 10,left: 10,right: 10),
           child: Divider(
            thickness: 2,
            color:Colors.grey
           ),
         ),
       
          Padding(
           padding: EdgeInsets.only(top: 40,left: 20),
           child: Row(
             children: [
               Text('Account',style: TextStyle(fontSize: 15),),
             ],
           ),
         ),
         Padding(
           padding: EdgeInsets.only(left: 20,top: 20),
           child: Row(children: [
           Text('Profile settings'),
           SizedBox(width: 160,),
           InkWell(
            onTap: (){},
             child: Container(height: 30,width: 80,color: Colors.grey,
             child: Center(child: Text('manage')),),
           )
           ],),
         ),
         
         Padding(
           padding:EdgeInsets.only(top: 10,left: 10,right: 10),
           child: Divider(
            thickness: 2,
            color:Colors.grey
           ),
         ),
       
          Padding(
           padding: EdgeInsets.only(top: 40,left: 20),
           child: Row(
             children: [
               Text('Notification',style: TextStyle(fontSize: 15),),
             ],
           ),
         ),
         Padding(
           padding: EdgeInsets.only(left: 20,top: 20),
           child: Row(children: [
           Text('Personalized Notifications'),

           SizedBox(width: 120,),

           Padding(
             padding:EdgeInsets.only(),
             child: Container(
              height: 50,
              width: 50,
             child: Image.asset('assets/img/set.png'),),
           ),

         
           ],),
           ),
         
           Padding(
           padding:EdgeInsets.only(top: 10,left: 10,right: 10),
           child: Divider(
            thickness: 2,
            color:Colors.grey
           ),
         ),
       
          Padding(
           padding: EdgeInsets.only(top: 40,left: 20),
           child: Row(
             children: [
               Text('Security',style: TextStyle(fontSize: 15),),
             ],
           ),
         ),
         Padding(
           padding: EdgeInsets.only(left: 20,top: 20),
           child: Row(children: [
           Text('Password change'),
           SizedBox(width: 150,),
           InkWell(
            onTap: (){},
             child: Container(height: 30,width: 80,color: Colors.grey,
             child: Center(child: Text('manage')),),
           )
           ],),
         ),
         
         Padding(
           padding:EdgeInsets.only(top: 10,left: 10,right: 10),
           child: Divider(
            thickness: 2,
            color:Colors.grey
           ),
         ),

       SizedBox(height: 10,),

       Padding(
         padding:EdgeInsets.only(left: 15),
         child: Row(
           children: [
             Text('Help & Support'),
           ],
         ),
       ),
       SizedBox(height: 12,),
        Padding(
          padding: EdgeInsets.only(left: 15,right: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('About us'),
            InkWell(
              onTap: (){},
            child: Icon(Icons.arrow_forward_ios)),
             
           ],
       ),
        ),
       SizedBox(height: 8,),
        Padding(
          padding:EdgeInsets.only(left: 15,right: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Terms & Condition'),
             InkWell(
              onTap: (){},
             child: Icon(Icons.arrow_forward_ios))
           ],
       ),
        ),
       SizedBox(height: 8,),
        Padding(
          padding:EdgeInsets.only(left: 15,right: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Privacy policy'),
             InkWell(
              onTap: (){},
             child: Icon(Icons.arrow_forward_ios))
           ],
       ),
        ),
       



         ],),
       ),
          );
          }}