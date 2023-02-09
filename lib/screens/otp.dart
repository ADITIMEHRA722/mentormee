import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mentormee/screens/success.dart';

class Otpscn extends StatefulWidget {
  Otpscn({Key? key}) : super(key: key);

  @override
  State<Otpscn> createState() => _OtpscnState();
}

class _OtpscnState extends State<Otpscn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? otpData;

  late int _start;

  void startTimer() {
    _start = 30;
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (mounted) {
          setState(() {
            if (_start == 0) {
              timer.cancel();
            } else {
              _start--;
            }
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 250, 250, 250),
      title: Text('Verify Phone',
      style: TextStyle(color: Colors.black),),
      leading: Icon(Icons.crop_sharp,color: Colors.black,),
      centerTitle: true,
      toolbarHeight: 100,),
      
      body:Column(
        children: [

          Padding(
            padding:EdgeInsets.only(top: 40,),
            child: Text('Code is sent to 2838352999'),
          ),
        

        SizedBox(height: 10,),
          Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Implement 4 input fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(_fieldOne, true),
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false)
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: const Text('Dont Have Code ? '),
                  ),

                   Expanded(
                     child: InkWell(
                        onTap: () {
                          startTimer();
                        },
           child: const Text('Resend',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      ),
                   ),
                  
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Text('$_start',style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold),),
                    ),
                      
                  
                  
                ],
              ),
            ],
          ),
        ),

        
      


        SizedBox(height: 80,),


        InkWell(
          onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Sucessscn()));
          },
          child: Container(height: 50,
          width: 300,
          decoration: BoxDecoration(color: Colors.blue,
          borderRadius: BorderRadius.circular(10)),
          child: Center(child: Text('Verify and create account',
          style: TextStyle(color: Colors.white,fontSize: 18),)),),
        )

        // Btns(
        //   onTap: (){
        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>NavBarPage()));
        //   },
        //   btnName: 'Continue',
        //   width: 300,
          
        // ),

        
 
      ],)
    );
        
  }
}
      
      
      
      class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
           color: Colors.white,
           border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(6)),
      child: TextField(
        style: TextStyle(color: Colors.black),
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor:  Colors.black,
        // cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(
               color:  Colors.blue,
             fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}





      


    
    