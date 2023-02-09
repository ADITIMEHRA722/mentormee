import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';


class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ExploreState();
}

class _ExploreState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey,
        // title: Text("Contact us", style: TextStyle(color: Colors.black),),
        // leading: InkWell(
        //   onTap: (){
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 100),
              child: Column(
                children: [
                SizedBox(height: 50,),
                  Container(
                     height: 250,
                     width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10), 
                    boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                Text("Whatsapp Number ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),), 
                          SizedBox(height: 10,),

                           Text("+918856038603 ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),), 
                          SizedBox(height: 30,),

                          Text("Our Email ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),), 
                          SizedBox(height: 10,),

                           Text("support@mentormee.in", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),), 
                          SizedBox(height: 10,),


                        ],
                      ),
                    ),
                  
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}