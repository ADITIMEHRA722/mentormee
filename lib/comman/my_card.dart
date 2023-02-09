import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;

  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Container(
                  height: 46,
                  width: 46,
                  child: Image.asset("assets/img/ms.png"),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text("\$" + balance.toString(),
                style: TextStyle(color: Colors.white, fontSize: 28)),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card number
                Text(
                    "****" +
                        " " +
                        "****" +
                        " " +
                        "****" +
                        cardNumber.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                // card expiry date
                Text(expiryMonth.toString() + "/" + expiryYear.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
