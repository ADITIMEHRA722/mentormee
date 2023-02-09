import 'package:flutter/material.dart';

import 'package:mentormee/screens/textform.dart';

class Signupscn extends StatefulWidget {
  Signupscn({Key? key}) : super(key: key);

  @override
  State<Signupscn> createState() => _SignupscnState();
}

class _SignupscnState extends State<Signupscn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 241, 238, 238),
        toolbarHeight: 120,
        title: Text(
          'Sign up',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text('Your Email'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text('Password'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your Passsword',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Textformscn()));
              },
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                    child: Text(
                  'Create account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
