import 'package:flutter/material.dart';
import 'package:mentormee/comman/bottom_bar.dart';
import 'package:mentormee/comman/bottombar_1.dart';
import 'package:mentormee/comman/course_widget.dart';
import 'package:mentormee/comman/notificationpage/msg.dart';
import 'package:mentormee/comman/notificationpage/noti.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Notification",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
       onTap: () {
         Navigator.pop(context);
       },
        
        child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  //  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                            labelColor: Colors.black,
                            controller: tabController,
                            tabs: [
                              Tab(
                                text: "Message",
                              ),
                              Tab(
                                text: "Notification",
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  controller: tabController,
                  children: [
                    Noti(),
                    Msg(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
//bottomNavigationBar: BottomBar1(),
 bottomNavigationBar: BottonBar(),
            
    );
  }
}
