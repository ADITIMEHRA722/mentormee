import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:mentormee/comman/my_card.dart';
import 'package:mentormee/screens/purchase.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PayNow extends StatefulWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  State<PayNow> createState() => _PayNowState();
}

class _PayNowState extends State<PayNow> {
  final _controller = PageController();

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.cancel),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Payment Method",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "\$74.00",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "My card",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                      balance: 5350.40,
                      cardNumber: 3355,
                      expiryMonth: 11,
                      expiryYear: 24,
                      color: Colors.deepPurple[300]),
                  MyCard(
                      balance: 6650.40,
                      cardNumber: 6845,
                      expiryMonth: 10,
                      expiryYear: 22,
                      color: Colors.deepOrange[300]),
                  MyCard(
                      balance: 49.40,
                      cardNumber: 5545,
                      expiryMonth: 8,
                      expiryYear: 25,
                      color: Colors.greenAccent),
                  MyCard(
                      balance: 5350.40,
                      cardNumber: 6845,
                      expiryMonth: 5,
                      expiryYear: 22,
                      color: Colors.redAccent),
                  MyCard(
                      balance: 0950.40,
                      cardNumber: 2245,
                      expiryMonth: 7,
                      expiryYear: 21,
                      color: Colors.yellowAccent),
                  MyCard(
                      balance: 5390.40,
                      cardNumber: 3345,
                      expiryMonth: 8,
                      expiryYear: 20,
                      color: Colors.pinkAccent),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
                controller: _controller,
                count: 6,
                effect: WormEffect(
                    dotHeight: 10,
                    activeDotColor: Colors.grey.shade500,
                    radius: 10,
                    dotColor: Colors.grey.shade200,
                    dotWidth: 10), // your preferred effect
                onDotClicked: (index) {}),
            SizedBox(
              height: 60,
            ),
            InkWell(
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: false,
                  enableDrag: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (context) => buildSheet(),
                );
              },
            ),
          ],
        ),
      )),
    );
  }

  Widget buildSheet() => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "Payment Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Please enter the payment password",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),

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
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Purchase()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            )
          ],
        ),
      );
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
        cursorColor: Colors.black,
        // cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.blue, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
