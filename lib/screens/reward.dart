import 'package:flutter/material.dart';
import 'package:mentormee/comman/reward_widget.dart';



class Rewardscn extends StatefulWidget {
  Rewardscn({Key? key}) : super(key: key);

  @override
  State<Rewardscn> createState() => _RewardscnState();
}

class _RewardscnState extends State<Rewardscn> {

  int currentStep = 0;
  dynamic titleName ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Rewards',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,

      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      elevation: 0,
    ),

    body: SingleChildScrollView(
    child: 
    Column(
    children: [
    Padding(
      padding:EdgeInsets.only(top: 80,left: 10),
      child: Text('Achieve more',
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    ),
    SizedBox(height: 8,),

    Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text('as you progress daily!'),
    ),

    SizedBox(height: 20,),

  Theme(
    data: ThemeData(
                  accentColor: Color.fromARGB(255, 240, 165, 52),
                  primarySwatch: Colors.orange,
                  colorScheme: ColorScheme.light(
                  primary: Color.fromARGB(255, 240, 173, 72)
                  )
                ),
    child:
      
       Stepper(
        controlsBuilder: (context, controller) {
                  return Container();
                },
        currentStep:currentStep,
        onStepTapped: (index){
          setState(() => currentStep =index);
        },
        onStepContinue: (){
          if(currentStep!=2)
          setState(() => currentStep++);
        },
        type: StepperType.vertical,
        steps: [
        Step(
        isActive: currentStep>=0,
        title: Text('Level 1',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),), 
        content: currentStep == 0
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Level 1 rewards",
                          )
                        : Text('Level 1 rewards')
        ),
      
        Step(
        isActive: currentStep>=0,
        title: Text('Level 2',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),), 
        content: currentStep == 1
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Level 2 rewards",
                          )
                        : Text('Level 2 rewards')),
      
        Step(
        isActive: currentStep>=0,
        title: Column(children: [
          Text('Level 3',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
         // Text('Bronze ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.grey),),
        ],) ,
        content: currentStep == 2
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Level 3 rewards",
                          )
                        : Text('Level 3 rewards')),
      
        Step(
        isActive: currentStep>=0,
        title: Column(children: [
          Text('Level 4',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        //  Text('Silver ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.grey),),
        ],) , 
        content: currentStep == 3
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Level 4 rewards",
                          )
                        : Text('Level 4 rewards')),
         Step(
        isActive: currentStep>=0,
        title: Column(children: [
          Text('Level 5',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        //  Text('Gold ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.grey)
         // ,),
        ],) ,
        content: currentStep == 4
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Level 5 rewards",
                          )
                        : Text('Level 5 rewards')),

         Step(
        isActive: currentStep>=0,
        title: Text('Bronze',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),), 
       content: currentStep == 5
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Bronze rewards",
                          )
                        : Text('Level Bronze rewards')),


         Step(
        isActive: currentStep>=0,
        title: Text('Silver',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),), 
        content: currentStep == 6
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Level Sliver rewards",
                          )
                        : Text('Level Silver rewards')),

                          Step(
        isActive: currentStep>=0,
        title: Text('Gold',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),), 
        content: currentStep == 7
                        ? RewardWidget(
                            level: currentStep+1,
                            text: "Level Gold rewards",
                          )
                        : Text('Level Gold rewards')),
        ]
        ),),
      



      ],)),



    );
  }
}