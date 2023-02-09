import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/screens/pass_change.dart';
import 'package:mentormee/screens/profile.dart';
import 'package:mentormee/screens/setting.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottonBar(),
     // bottomNavigationBar: BottomBar1(),
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: InkWell(
       onTap: () {
         Navigator.pop(context);
       },
        
        child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      elevation: 0,
    ),
      body: Container(
        child: ListView(
          children: [
           
            SizedBox(
              height: 16.05,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //     width: 4,
                        //     color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/img/Avatar.png"),
                        )),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // border: Border.all(
                          //   width: 4,
                          //   color: Theme.of(context).scaffoldBackgroundColor,
                          // ),
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                     onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfileS() ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Edit Account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ),

                   SizedBox(
                    height: 30,
                  ),
                  InkWell(
                     onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) =>PassChange() ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Password Change",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>SettingS() ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Setting and Privacy",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Help",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 200,
            // ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   child: BottonBar(),
            // )
          ],
        ),
      ),
    );
  }
}
