import 'package:flutter/material.dart';
import 'package:mentormee/screens/batch/23/Elite%20Plus/eliteplus_enroll_ab.dart';
import 'package:mentormee/screens/batch/23/elite/elite_enroll_ab.dart';
import 'package:mentormee/screens/course/23%20group/elit%20plus/eliteplus_enroll_gr_ab.dart';
import 'package:mentormee/screens/course_enroll.dart';

//  List <dynamic> userlist =[
//    {'name':'Hriday Pitti','pic':'assets/m5.JPG','subtile':'AIIMS-Bhopal\nNEET 2020:681/720 Chemistry:180/180'},
//    {'name':'Rehan Khan','pic':'assets/m2.JPG','subtile':'AIIMS-Bhopal NEET 2019:645/720 AIIMS\nAIR:78'},
//    {'name':'SanKalp Salunke','pic':'assets/m3.JPG','subtile':'AIIMS-Bhopal NEET 2020:665/720 Biology:350/360'},
//    {'name':'Alpana Kumari','pic':'assets/m4.JPG','subtile':'AIIMS-Delhi NEET 2020:691/720\nAIR:216'},
  
// ];

List <dynamic> userlist =[
   {'name':'Hriday Pitti','pic':'assets/img/m5.JPG','subtile':'AIIMS-Bhopal NEET 2020:681/720 Chemistry:180/180'},
   {'name':'Rehan Khan','pic':'assets/img/m2.JPG','subtile':'AIIMS-Bhopal NEET 2019:645/720 AIIMS\nAIR:78'},
   {'name':'SanKalp Salunke','pic':'assets/img/m3.JPG','subtile':'AIIMS-Bhopal NEET 2020:665/720 Biology:350/360'},
   {'name':'Alpana Kumari','pic':'assets/img/alpna.jpg','subtile':'AIIMS-Delhi NEET 2020:691/720\nAIR:216'},
  

];

class MentorGr23ElitePlus extends StatelessWidget {
  MentorGr23ElitePlus({Key? key}) : super(key: key);


  
 final TextEditingController? searchController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return 

Scaffold(
  backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // ! Sliver app Bar
          SliverAppBar(
            leading: 
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            snap: false,
           
            
            title: Text('Select Your  Mentors',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),

           SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                // Text('Meet Our Mentor',
                // style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                // SizedBox(height: 10,),
                // Text('       The world class mentors from india top\nuniversity and organizations. Keep following to\n                       get their videos', 
                // style: TextStyle(color: Colors.grey, fontSize: 15),)
                ],
              ),
            ),
          ),


          SliverPadding(
            padding: const EdgeInsets.all(5.0),
            sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.9),
                  mainAxisSpacing: 40.0,
                  crossAxisSpacing: 20.0,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return GridProdItem(prodNum: userlist[index],);
                }, childCount: 4)),
          )
        ],
      ),
    );
  }
}

class GridProdItem extends StatelessWidget {
  final dynamic prodNum;
  
  final Function()? onTap;

  const GridProdItem(
      {super.key, this.prodNum, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        // onTap: onTap ?? () => pushRoute(context, pageName!),
        child: Container(
          
          height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(5.0),
          // border: Border.all(
              // color: borderColor,
              // )
              ),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                width: 68,
                height: 68,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),
                color: Colors.grey,
                image: DecorationImage(
              image: AssetImage(
              prodNum['pic']
              ),
              fit: BoxFit.cover,
             ),),
              ),
            ),
        
            // ! title  and Subtitle for
            
              
                Container(
                  padding: const EdgeInsets.only(
                    left: 3, right: 3, top: 1.0, bottom: 1.0),
                    child: Column(
                      children: [
                        Text(
                        // 'Alfonso Lakin'
                         prodNum['name'].toString()
                        ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                  ),
                    Padding(
                      padding:EdgeInsets.only(left: 30),
                      child: Text(prodNum['subtile'].toString()),
                    )
                      ],
                    ),
                  ),
        
                  SizedBox(height: 5,),
        
        
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) =>ElitePlusGr23())));
                    },
                    child: Container(height: 30,width: 100,
                    decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Select Mentor',
                    style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 15),)),),
                  )
              
            
          ]),
          ));




//     Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           // ! Sliver app Bar
//           SliverAppBar(
//             backgroundColor: Colors.white,
//             leading: 
//             InkWell(
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             child: Icon(Icons.arrow_back,color: Colors.black,)),
//             floating: true,
//             pinned: true,
//             snap: false,
           
            
//             title: Text('Our Mentors',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//           ),

//           SliverToBoxAdapter(
//             child: Padding(
//               padding: EdgeInsets.only(top: 30),
//               child: Column(
//                 children: [
//                 Text('Meet India Top Mentors',
//                 style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//                 SizedBox(height: 10,),
//                 Text('       The world class mentors from india top\nuniversity and organizations. Keep following to\n                       get their videos')
//                 ],
//               ),
//             ),
//           ),

         

//           SliverPadding(
//             padding: const EdgeInsets.all(5.0),
//             sliver: SliverGrid(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: MediaQuery.of(context).size.width /
//                       (MediaQuery.of(context).size.height / 1.9),
//                   mainAxisSpacing: 40.0,
//                   crossAxisSpacing: 20.0,
//                 ),
//                 delegate: SliverChildBuilderDelegate((context, index) {
//                   return GridProdItem( prodNum: userlist[index],);
//                 }, childCount: 4)),
//           )
//         ],
//       ),
//     );
//   }
// }

// class GridProdItem extends StatelessWidget {
//   final dynamic prodNum;
//   final Function()? onTap;

//    GridProdItem(
//       {super.key, this.prodNum, this.onTap});


//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         // onTap: onTap ?? () => pushRoute(context, pageName!),
//         child: Container(height: 900,
//       decoration: BoxDecoration(
//           // color: Colors.red,
//           borderRadius: BorderRadius.circular(5.0),
//           // border: Border.all(
//               // color: borderColor,
//               // )
//               ),
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Center(
//               child: Container(
//                 width: 90,
//                 height: 100,
                
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),
//                 color: Colors.grey,
//                 image: DecorationImage(
//               image: AssetImage(
//               prodNum['pic']
//               ),
//               fit: BoxFit.fill,
//              ),

//                  ),
//               // child: Image.asset('assets/m1.JPG'),
//               ),
//             ),

//             // ! title  and Subtitle for
            
              
//                 Container(
//                   padding: const EdgeInsets.only(
//                     left: 3, right: 3, top: 1.0, bottom: 1.0),
//                     child: Column(
//                       children: [
//                         Text(
//                         // 'Alfonso Lakin'
//                      prodNum['name'].toString()
//                         ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//                         textAlign: TextAlign.left,
//                   ),
//                     Padding(
//                       padding:EdgeInsets.only(left: 30),
//                       child: 
//                           Expanded(
//                           child: Text(prodNum['subtile'].toString(),
//                             ),
//                           ),
                       
//                     )
//                       ],
//                     ), 
//                   ),

//                   SizedBox(height: 5,),


//                   Container(height: 30,width: 100,
//                   decoration: BoxDecoration(color: Colors.black,
//                   borderRadius: BorderRadius.circular(10)),
//                   child: Center(child: Text('Know more',
//                   style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,
//                   fontSize: 15),)),)
              
            
//           ]),
//     ));
  }
}