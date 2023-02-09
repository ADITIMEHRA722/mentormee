import 'package:flutter/material.dart';
import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';

// import 'stepper.dart';
// import 'package:horizontal_stepper_step/horizontal_stepper_step.dart';

class Testscn extends StatefulWidget {
  Testscn({Key? key}) : super(key: key);

 
  @override
  State<Testscn> createState() => _TestscnState();
}

class _TestscnState extends State<Testscn> {
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
       bottomNavigationBar: BottonBar(),
     // bottomNavigationBar: BottomBar1(),
        //  appBar: AppBar(
        // backgroundColor:Colors.white,
        // toolbarHeight: 80,
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return InkWell(
        //       child: Image.asset(
        //         'assets/img/b3.png',
        //       ),
        //       onTap: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
        //   actions: [  
        //   Row(
        //   children: [
        
        //  Image.asset('assets/img/b5.png'),

        //  SizedBox(width: 10,),
        //  Image.asset('assets/img/b4.png'),

        //  SizedBox(width: 10,),
        //  Image.asset('assets/img/a6.png'),
        //        ],),],
        //        ),
        body: 

            Column(
              children: [
                SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.only(top: 30,left: 40),
                  child: Row(
                    children: [
                   Container(height: 30,width: 30,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                   color: Color.fromARGB(255, 136, 135, 135)),
                    child: Icon(Icons.done,size: 30,color: Colors.white,)),
                    Container(height: 2,
                     width: 60,
                     color: Colors.black,
                    ),
                  Container(height: 30,width: 30,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                   color: Color.fromARGB(255, 131, 130, 130)),
                    child: Icon(Icons.done,size: 30,color: Colors.white,)),
                    Container(height: 2,
                     width: 60,
                     color: Colors.black,
                    ),
                    Container(height: 30,width: 30,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                   color: Color.fromARGB(255, 131, 128, 128)),
                    child: Icon(Icons.done,size: 30,color: Colors.white,)),
                    Container(height: 2,
                     width: 60,
                     color: Colors.black,
                    ),
                Icon(Icons.reviews,size: 30,),
                  ],),
                ),

                SizedBox(height: 30,),
                
                Expanded(
                  child: ListView.builder(
                   itemCount: 1,
                  itemBuilder:(context,index){
                    return 
                      
                      Column(
                        children: [
                          ListTile(
                            title: Text('Test 1', style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Unit 1 and Unit 2'),
                            leading: Container(height: 40,width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            color: Colors.grey),
                            child: Icon(Icons.done,color: Colors.white,)),
                          ),
                           ListTile(
                            title: Text('Test 2', style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Unit 3 and Unit 4'),
                            leading: Container(height: 40,width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            color: Colors.grey),
                            child: Icon(Icons.done,color: Colors.white,)),
                          ),
                           ListTile(
                            title: Text('Test 3', style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Unit 5 and Unit 6'),
                            leading: Container(height: 40,width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            color: Colors.grey),
                            child: Icon(Icons.done,color: Colors.white,)),
                          ),
                           ListTile(
                            title: Text('Test 4', style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Unit 7 and Unit 8'),
                            leading: Container(height: 40,width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            color: Colors.grey),
                            child: Icon(Icons.done,color: Colors.white,)),
                          ),
                           ListTile(
                            title: Text('Test 5', style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Unit 9 and Unit 10'),
                            leading: Container(height: 40,width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            color: Colors.grey),
                            child: Icon(Icons.done,color: Colors.white,)),
                          ),
                           ListTile(
                            title: Text('Test 6',
                            style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text('Unit 11 and Unit 12'),
                            leading: Container(height: 40,width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            color: Colors.grey),
                            child: Icon(Icons.done,color: Colors.white,)),
                          ),
                        ],
                      );
                    
                  } ),
                )

                 



              ],
            ),


          





 ); }
}

