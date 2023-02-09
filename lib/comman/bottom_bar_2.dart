

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mentormee/screens/batch/batch_23_24_for_bt.dart';
import 'package:mentormee/screens/home.dart';
import 'package:mentormee/screens/select_mentors.dart';
import 'package:mentormee/screens/test_s.dart';
import 'package:mentormee/screens/toppers_talk.dart';

class NavMain extends StatefulWidget {
int selectedIndex = 0; 
NavMain({required   this.selectedIndex});

  @override
  State<NavMain> createState() => _NavMainState();
}

class _NavMainState extends State<NavMain> {
  int currentIndex = 0 ; 

  void onItemsTapped(int index){
    setState(() {
      // Widget.selectedIndex = index; 
      // currentIndex = widget.selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onItemsTapped(widget.selectedIndex);
  }

  final List<Widget> pages = [
    Home(),
    TestS(), 
    Batch_23_24_For_bt(), 
   // SelectMentor(), 
    ToppersTalk(),
    
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {

    // Widget currentScreen = currentIndex == 0 ? TestS() : 
    // currentIndex ==1 ? Batch_23_24_For_bt() : currentIndex == 2? 
    // SelectMentor(): ToppersTalk();

    Widget currentScreen = currentIndex == 0 ? Home() : 
    currentIndex ==1 ? TestS() : 
    currentIndex == 2? Batch_23_24_For_bt(): ToppersTalk();



    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(  
        backgroundColor: Colors.white,
        child:Container(
          height: 20, 
          width: 20,
          decoration: BoxDecoration(
          shape: BoxShape.circle, 
          image: DecorationImage( 
             
            image: AssetImage("assets/img/face_6.png", ), 
            
          )
        ),) ,

        onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: ((context) => SelectMentor())));
        },

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     bottomNavigationBar: BottomAppBar(  
      shape: CircularNotchedRectangle(),
      notchMargin: 10,  
      child: Container(
        height: 40,  
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


              
        Row(
          mainAxisAlignment: MainAxisAlignment.start,   
          children: [

            MaterialButton(
              minWidth: 50,   
              onPressed: (){

                setState(() {
                  currentScreen= Home();
                  currentIndex=0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Icon(Icons.home, 
                  color: currentIndex ==0 ? Colors.blue : Colors.grey,), 
                   Text("home")
                ],
              ),
            ),

          MaterialButton(
              minWidth: 50,   
              onPressed: (){
                setState(() {
                  currentScreen=TestS();
                  currentIndex=1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Icon(Icons.book, 
                  color: currentIndex ==1 ? Colors.blue : Colors.grey,), 
                   Text("Test Series")
                ],
              ),
            ),

            
         
         
          ],
        ),
    
          // SizedBox(width: 35,), 
        Row(
          mainAxisAlignment: MainAxisAlignment.start,   
          children: [

          MaterialButton(
              minWidth: 50,   
              onPressed: (){
                setState(() {
                  currentScreen= Batch_23_24_For_bt();
                  currentIndex=2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Icon(Icons.group, 
                  color: currentIndex ==2 ? Colors.blue : Colors.grey,), 
                   Text("Batch")
                ],
              ),
            ),

          MaterialButton(
              minWidth: 50,   
              onPressed: (){
                setState(() {
                  currentScreen=ToppersTalk();
                  currentIndex=3;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Icon(Icons.data_exploration_outlined, 
                  color: currentIndex ==3 ? Colors.blue : Colors.grey,), 
                   Text("Toppers")
                ],
              ),
            ),

            
         
         
          ],
        ),
    
    

          ],
        )
      
    
      ),
     ),
      
    );


  }
}


 
