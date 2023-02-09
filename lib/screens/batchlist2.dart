import 'package:flutter/material.dart';
import 'package:mentormee/screens/batches_new.dart';

List <dynamic> userlist =[
   {'name':'Hriday Pitti','pic':'assets/img/m5.JPG','subtile':'AIIMS-Bhopal NEET 2020:681/720 Chemistry:180/180'},
   {'name':'Rehan Khan','pic':'assets/img/m2.JPG','subtile':'AIIMS-Bhopal NEET 2019:645/720 AIIMS\nAIR:78'},
   {'name':'SanKalp Salunke','pic':'assets/img/m3.JPG','subtile':'AIIMS-Bhopal NEET 2020:665/720 Biology:350/360'},
   {'name':'Alpana Kumari','pic':'assets/img/alpna.jpg','subtile':'AIIMS-Delhi NEET 2020:691/720\nAIR:216'},
  

];



class Batch2scn extends StatefulWidget {
  Batch2scn({Key? key}) : super(key: key);

  @override
  State<Batch2scn> createState() => _Batch2scnState();
}

class _Batch2scnState extends State<Batch2scn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
           
            
            title: Text('Mentor list',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),

           SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                Text('Select Your Mentor',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('       The world class mentors from india top\nuniversity and organizations. Keep following to\n                       get their videos', 
                style: TextStyle(color: Colors.grey, fontSize: 15),)
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
                      padding: EdgeInsets.only(left: 30),
                      child: Text(prodNum['subtile'].toString()),
                    )
                      ],
                    ),
                  ),

                  SizedBox(height: 5,),


                  InkWell(

                    onTap: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=> NewBatches()));
                    },
                    child: Container(height: 30,width: 100,
                    decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Know more',
                    style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 15),)),),
                  )
              
            
          ]),
    ));
  }
}
  





