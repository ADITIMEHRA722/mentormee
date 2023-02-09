import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';


class ExploreElitePlus extends StatefulWidget {
  const ExploreElitePlus({super.key});

  @override
  State<ExploreElitePlus> createState() => _ExploreState();
}

class _ExploreState extends State<ExploreElitePlus> with SingleTickerProviderStateMixin{
 
  final DecorationTween decorationTween = DecorationTween(
  begin: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black)),
      end: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 10,
                blurRadius: 5.0,
                //offset: Offset(10, 10, ),
                )
          ]));

  late AnimationController _controller;

  bool isClicked = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Explore", style: TextStyle(color: Colors.black),),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
              SizedBox(height: 50,),

                GestureDetector(

                  onTap: () {
              if (isClicked) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
              isClicked = !isClicked;
            },

                  child: Center(
                    child: DecoratedBoxTransition(
                
                       position: DecorationPosition.background,
                    decoration: decorationTween.animate(_controller),
                
                      child: Container(
                        //duration: Duration(milliseconds: 5000),
                        // height: 600,
                        // width: 600,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), 
                        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                    Text("Elite + 2023 Batch ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 30,),
                      
                              Text("Befefits of the Batch :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 20,),
                      
                              Text("• Personal Mentor ( AIIMS)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                             Text("• 24 X 7 Chat Support One to One ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                               Text("• One To One Weekly Session ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                            
                              Text("• Daily Task ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• Personalized Schedule ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• Material & Mock Test Analysis \n  Support", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• Regular Strategy & Motivation", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• Preparation Related Doubt clearance \n  Session ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• Personalized Montly & Weekly \n   Schedule", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• Regular one to one Performance \n  analysis  ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• Dedicated Mentorship Groups ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                      
                              Text("• & Lot more Things", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                              SizedBox(height: 3,),
                            ],
                          ),
                        ),
                      
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}