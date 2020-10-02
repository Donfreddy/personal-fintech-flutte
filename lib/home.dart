import 'package:flutter/material.dart';
import 'package:personal_fintech_flutter_app/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ////////Varaible

  var moneyTextStyle = TextStyle(color: Colors.white, fontSize: 20);
  var balanceTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  //////////methods

  /////Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.apps,
                  color: Colors.white,
                ),
                CircleAvatar(
                  child: Text("A"),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: balanceTextStyle,
                ),
                Text(
                  "\$ 1,750.20",
                  style: moneyTextStyle,
                )
              ],
            ),
          ),
          MasterCard()
        ],
      ),
    );
  }
}

class MasterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/img/sim.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
