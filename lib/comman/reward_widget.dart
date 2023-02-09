import 'package:flutter/material.dart';


class RewardWidget extends StatelessWidget {
  const RewardWidget({Key? key, this.level, this.text,}) : super(key: key);
  final int ?level;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 170,
        width: 300,
        decoration: BoxDecoration(
           color: Colors.orange.shade100,
           borderRadius: BorderRadius.circular(10),
        ),
       
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 150, top: 10),
              child: Text(
               // 'Level $level rewards',
               "$text",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Column(
                  children: [
                    Container(
                      height:  40 , 
                      width: 40, 
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(image: AssetImage("assets/img/win.png", ))),
                    SizedBox(
                      width: 30,
                    ),
                    Text('rewards 1'),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Container(
                      height:  40 , 
                      width: 40, 
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(image: AssetImage("assets/img/win.png", ))),
                  Text('rewards 2'),
                ],
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    '$level/08',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  
                
                  

                ],
              ),

              
            ), 

            Padding(
              padding: EdgeInsets.only(left: 20 ,top: 5, bottom: 5),
              child: Row(
                children: [
                  Text(
                    'Upload pdf',
                    style: TextStyle(fontSize: 18, ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){

                    },
                    
                    child: Icon(Icons.picture_as_pdf, size: 20, color: Colors.black,))
                
                  

                ],
              ),

              
            )
          ],
        ),
      ),
    );
  }
}