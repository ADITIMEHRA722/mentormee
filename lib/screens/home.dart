import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottom_bar_2.dart';
import 'package:mentormee/comman/bottombar_1.dart';

import 'package:mentormee/screens/account.dart';
import 'package:mentormee/screens/contact.dart';
import 'package:mentormee/screens/course.dart';
import 'package:mentormee/screens/course/batch23_24.dart';
import 'package:mentormee/screens/course_23_24.dart';
import 'package:mentormee/screens/mentor.dart';
import 'package:mentormee/screens/mentor_new.dart';
import 'package:mentormee/screens/my_courses.dart';
import 'package:mentormee/screens/notification.dart';
import 'package:mentormee/screens/recommended_books.dart';
import 'package:mentormee/screens/result.dart';
import 'package:mentormee/screens/reward.dart';
import 'package:mentormee/screens/testseris.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _controller = PageController();

  int _currentPage = 1;

  CarouselController? carouselController;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  

  void ShowAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Show alert dialog'),
            content: Text('Please click logout to Ok button'),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok')),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        backgroundColor: Colors.blue,
        bottomNavigationBar: BottonBar(),

        // appBar: AppBar(
        // backgroundColor:Colors.white,
        // toolbarHeight: 100,
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return InkWell(
        //       child: Image.asset("assets/img/off(2).png"),
        //       onTap: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),),

        drawer: Drawer(
          backgroundColor: Colors.white,
          child: DrawerHeader(
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset('assets/img/Avatar.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ricardo Black',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          // Text(
                          //   'UI Designer',
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => YourMentor()));
                    },
                    child: ListTile(
                        title: Text('Your Mentor',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        // leading: CircleAvatar(
                        //     backgroundColor: Colors.transparent,
                        //     backgroundImage: AssetImage(
                        //       "assets/img/mnt.png",
                        //     )
                        //     ), 

                        trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)
                            

                            )
                            ),

                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Batch_23_24()));
                    },
                    child: ListTile(
                        title: Text('Course',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        // leading: CircleAvatar(
                        //     backgroundColor: Colors.transparent,
                        //     backgroundImage: AssetImage(
                        //       "assets/img/vd.png",
                        //     )), 

                         trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)


                            )
                            ),

                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyCourse()));
                    },
                    child: ListTile(
                        title: Text('My Course',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        // leading: CircleAvatar(
                        //     backgroundColor: Colors.transparent,
                        //     backgroundImage: AssetImage(
                        //       "assets/img/vd.png",
                        //     ))

                         trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)
                            )),

                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications()));
                    },
                    child: ListTile(
                        title: Text(
                          'Notifications',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // leading: CircleAvatar(
                        //     backgroundColor: Colors.transparent,
                        //     backgroundImage: AssetImage(
                        //       "assets/img/bell.png",
                        //     )),
                             trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)
                            
                            )),

                InkWell(
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecommendedBooks()));
                    },
                    child: ListTile(
                        title: Text('Recommended Books',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        // leading: CircleAvatar(
                        //     backgroundColor: Colors.transparent,
                        //     backgroundImage: AssetImage(
                        //       "assets/img/book.png",
                        //     )), 

                         trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)
                            
                            )),

                //  InkWell(
                //   onTap: (){
                //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
                //   },
                //    child: ListTile(
                //    title: Text('Our Results',style: TextStyle(color: Colors.white)),
                //    leading:CircleAvatar(
                //     backgroundColor: Colors.white,
                //     backgroundImage: AssetImage("assets/img/result.png", )))

                //  ),

                // InkWell(
                //   onTap: (){},
                //   child: ListTile(
                //   title: Text('About us',style: TextStyle(color: Colors.white)),
                //   leading:CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: AssetImage("assets/img/info.png", )))

                // ),

                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => Contact())));
                    },
                    child: ListTile(
                        title: Text('Contact us',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        // leading: CircleAvatar(
                        //     backgroundColor: Colors.transparent,
                        //     backgroundImage: AssetImage(
                        //       "assets/img/phone.png",
                        //     )), 
                            
                             trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)
                            )),

                //  InkWell(
                //   onTap: (){},
                //    child: ListTile(
                //    title: Text('Terms and Conditions',style: TextStyle(color: Colors.white)),
                //    leading:CircleAvatar(
                //     backgroundColor: Colors.white,
                //     backgroundImage: AssetImage("assets/img/tc.png", )))
                //  ),

                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rewardscn()));
                  },
                  child: ListTile(
                      title: Text('Your Rewards',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                      // leading: CircleAvatar(
                      //     backgroundColor: Colors.transparent,
                      //     backgroundImage: AssetImage(
                      //       "assets/img/re.png",
                      //     )), 

                           trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)
                          )
                          ,
                ),

                // SizedBox(height: ,),

                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account()));
                    },
                    child: ListTile(
                        title: Text('Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        // leading: CircleAvatar(
                        //     backgroundColor: Colors.transparent,
                        //     backgroundImage: AssetImage(
                        //       "assets/img/user.png",
                        //     ))
                            
                             trailing: Icon(Icons.arrow_forward_ios, 
                       size: 15,)
                            )),

                InkWell(
                  onTap: () {
                    ShowAlertDialog();
                  },
                  child: ListTile(
                      title: Text('Logout',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                      leading: Icon(
                        Icons.logout,
                        color: Colors.black,
                        size: 30,
                      )),
                ),
              ],
            ),
          ),
        ),
        
        
        body: SafeArea(
          
            child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Stack(
            children: [
              // title
              Container(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // hi
            
                              InkWell(
                                  onTap: () {
                                    _key.currentState!.openDrawer();
                                  },
                                  child: Icon(
                                    Icons.person_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  )),
            
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hii, Kristin ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Let's start learning ",
                                    style: TextStyle(
                                        color: Colors.blue[100], fontSize: 15),
                                  ),
                                ],
                              ),
            
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.circular(12)
                                ),
                                padding: EdgeInsets.all(12),
                                child: CircleAvatar(
                                  //  backgroundColor: Colors.greenAccent[400],
                                  radius: 20,
                                  child: Image.asset("assets/img/Avatar.png"),
                                ),
                              ),
                            ])
                      ]))),
            
              // carousel and learning plane
            
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  color: Colors.white,
                  child: Column(
                    children: [
            
            
                      
                      Container(
                          color: Colors.white,
                          height: 180,
                          padding: EdgeInsets.all(20),
                          child: ListView(
                         
                            scrollDirection: Axis.horizontal,
                            children: [
            
            
                              // Container(
                              //   margin: EdgeInsets.symmetric(
                              //       horizontal: 10, vertical: 5),
                              //   width: 250,
            
                              //   //padding: EdgeInsets.all(20),
                              //   decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: AssetImage(
                              //           "assets/img/pt0.png",
                              //         ),
                              //         fit: BoxFit.cover),
                              //     borderRadius: BorderRadius.circular(20),
                              //     color: Colors.white,
                              //     boxShadow: <BoxShadow>[
                              //       BoxShadow(
                              //           color: Colors.black54,
                              //           blurRadius: 10.0,
                              //           offset: Offset(0.0, 0.75))
                              //     ],
                              //   ),
                              // ),
            
            
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/pt000.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
            
                              
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/pt_add.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
            
            
                               Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/reh.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
            
            
            
            
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/pt22.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/pt33.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/pt11.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/pt55.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                width: 250,
            
                                //padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/img/pt66.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 10.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                ),
                              ),
                            ],
                          )),
            
            
            
                          SizedBox(height: 0,), 
            
                          
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 20, bottom: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Learning Plan",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, left: 15, bottom: 10),
                        child: Container(
                          height: 90,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    // blurRadius: 10,
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 15.0,
                                    offset: Offset(0.0, 0.75)),
                              ]),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: SizedBox(
                                          child: CircularProgressIndicator(
                                            backgroundColor: Colors.white,
                                            value: 0.6,
                                            valueColor: AlwaysStoppedAnimation(
                                                Colors.orange),
                                            strokeWidth: 3,
                                          ),
                                          height: 20.0,
                                          width: 20.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Questions have you Completed ?",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "40",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "/",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          "48",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: SizedBox(
                                          child: CircularProgressIndicator(
                                            backgroundColor: Colors.white,
                                            value: 0.7,
                                            valueColor: AlwaysStoppedAnimation(
                                                Colors.orange),
                                            strokeWidth: 3,
                                          ),
                                          height: 20.0,
                                          width: 20.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Topic have you Completed ?",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "6",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "/",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          "24",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
            
            
            
                      
                                  Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 20, bottom: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Elite Batch",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
            
            
                    
                    
                     
                     
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Container(
                          height: 120,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                                  "assets/img/e_bt23.jpeg",
                                  
                              ), 
                              fit: BoxFit.cover,
                              ),
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 143, 137, 208)
                                .withOpacity(0.5),
                          ),
                        
                        ),
                      ),
            
            SizedBox(height: 10,),
            
            
            
                                
            
                                  Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 20, bottom: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "3 Day's free mentorship Program",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
            
            
                    
                    
                     
                     
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Container(
                          height: 120,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                                  "assets/img/pt55.png",
                                  
                              ), 
                              fit: BoxFit.cover,
                              ),
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 143, 137, 208)
                                .withOpacity(0.5),
                          ),
                        
                        ),
                      ),
            
            SizedBox(height: 10,),
            
            
            
                                  Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 20, bottom: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "New Mentorship Batch",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
            
            
            
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Container(
                          height: 120,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                                  "assets/img/pt33.png",
                                  
                              ), 
                              fit: BoxFit.cover,
                              ),
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 143, 137, 208)
                                .withOpacity(0.5),
                          ),
                         
                        ),
                      ),
            
            
                   
             
             
             SizedBox(height: 20,),
             
             Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Container(
                          height: 120,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 143, 137, 208)
                                .withOpacity(0.5),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Meetup",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 64, 5, 181)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Off-line exchange of learning",
                                    style: TextStyle(
                                        fontSize: 15,
                                        // fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 64, 5, 181)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "experien",
                                    style: TextStyle(
                                        fontSize: 15,
                                        // fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 64, 5, 181)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 0,
                              ),
                              Container(
                                height: 108,
                                width: 110,
                                child: Image.asset(
                                  "assets/img/Group 144.png",
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                   
            
            
                    ],
                  ),
                ),
              ),
            
            
              
            
              // Navigation with learn by today
            
              // Container(
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         bottom: 0,
              //         left: 0,
              //         child: BottonBar(),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 80.0, left: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            // blurRadius: 10,
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 15.0,
                            offset: Offset(0.0, 0.75)),
                      ]),
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Learned today",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "My Course",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 25,
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "46min",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "/60min",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.grey[200],
                              color: Colors.orange,
                              value: 0.5,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ],
                    ),
                    
                  
                  ))
        );
  }
}
