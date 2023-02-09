import 'package:flutter/material.dart';

import 'package:mentormee/screens/otp.dart';

class Textformscn extends StatefulWidget {
  Textformscn({Key? key}) : super(key: key);

  @override
  State<Textformscn> createState() => _TextformscnState();
}

class _TextformscnState extends State<Textformscn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  body: ListView(
    //   children: [
    //     Icon(Icons.arrow_back_ios),
    //     Text('Enter your phone'),
    //     Container(height: 100,width: 110,color: Colors.white,),
    //   ],
    //  ),

    body: SingleChildScrollView(
      child: Column(
      children: [
      Container(
      height: 300,
      color: Color.fromARGB(255, 216, 214, 214),
      child: 
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70,left: 25),
              child: Row(children: [
              Icon(Icons.arrow_back_ios),
              SizedBox(width: 20,),
              Text('Continue with phone',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),),
              ],),
            ),
    
            SizedBox(height: 50,),
    
            Container(
              height: 100,
              width: 110,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(60), 
              image: DecorationImage(image: AssetImage("assets/img/illustration (1).png"))
              ),
              ),
             ],
             ),
             ),
    
         Padding(
            padding: EdgeInsets.only(top: 40,left: 110),
            child: 
            Row(children: [
            Text('Enter your phone number')],),
          ),
    
          SizedBox(height: 20,),
    
          // Padding(
          //   padding:EdgeInsets.only(top: 400),
          //   child: Row(children: [
          //     TextFormField(
          //       decoration: InputDecoration(
          //       border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10))),
          //     ),
          //     Container(height: 50,width: 100,color: Colors.blue,),
          //   ],),
          // )
              Padding(
                padding:EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  cursorHeight: 25,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10))),
                ),
              ),
    
    
              SizedBox(height: 30,),
    
                InkWell(
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpscn()));
                },
                child: Container(height: 50,width: 180,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                child: Text('Continue',
                style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
                ),
              ),
    
    
         ],),
         ),





    );
  }
}


 