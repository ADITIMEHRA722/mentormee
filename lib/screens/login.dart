import 'package:flutter/material.dart';
import 'package:mentormee/screens/textform.dart';

class Loginscn extends StatefulWidget {
  Loginscn({Key? key}) : super(key: key);

  @override
  State<Loginscn> createState() => _LoginscnState();
}

class _LoginscnState extends State<Loginscn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 241, 238, 238),
        toolbarHeight: 120,
        title: Text(
          'Log In',
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
              height: 40,
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
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: const Text('Dont Have an account ? '),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // startTimer();
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  'Or Login with',
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20, left: 10),
                    child: Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/img/gg.png")),
                SizedBox(
                  width: 40,
                ),
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/img/ff.png")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
