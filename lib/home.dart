import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_fintech_flutter_app/constants.dart';

import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  ////////Varaible

  var moneyTextStyle = TextStyle(color: Colors.white, fontSize: 20);
  var balanceTextStyle = TextStyle(color: grey, fontWeight: FontWeight.bold);
  //////////methods

  /////Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.apps,
                  color: darkGrey,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/img/images.jpg"),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
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
          MasterCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recents",
              style: TextStyle(
                color: grey,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/img/images2.jpg"),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/img/images5.jpg"),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/img/images3.jpg"),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/img/images4.jpg"),
                    ),
                    DottedBorder(
                      color: darkGrey,
                      strokeWidth: 2,
                      borderType: BorderType.Circle,
                      strokeCap: StrokeCap.round,
                      dashPattern: [6, 4],
                      child: CircleAvatar(
                        backgroundColor: dark,
                        child: Icon(
                          Icons.add,
                          color: darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 10,
                      color: darkGrey,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2.5,
                      decorationColor: darkGrey),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    margin: EdgeInsets.only(top: 6.0),
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: screenWidth(context) / 8,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Upcoming",
                    style: TextStyle(
                      color: grey,
                    ),
                  ),
                  UpcominCard()
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: dark,
        elevation: 0,
        //color: Color(0xFFFFFFFF),
        shape: CircularNotchedRectangle(),
        //notchMargin: 10.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.home,
                color: purple,
              ),
              onPressed: () {
                changePage(0);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.home,
                color: darkGrey,
              ),
              onPressed: () {
                changePage(1);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.wallet,
                color: darkGrey,
              ),
              onPressed: () {
                changePage(2);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.bell,
                color: darkGrey,
              ),
              onPressed: () {
                changePage(3);
              },
            ),
            // SizedBox(width: 100),
            // IconButton(
            //   icon: Container(
            //     child: Image.asset(
            //       'assets/img/menu.png',
            //       color: green,
            //     ),
            //   ),
            //   onPressed: () {
            //     changePage(1);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class UpcominCard extends StatelessWidget {
  const UpcominCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [],
      ),
    );
  }
}

class MasterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/img/sim.png",
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: SvgPicture.asset(
                    "assets/img/mastercard.svg",
                    width: 50,
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    "6047 1122 4575 4521",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card holder".toUpperCase(),
                        style: TextStyle(
                          fontSize: 8,
                          color: grey,
                        ),
                      ),
                      Text(
                        "Andrew",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry date".toUpperCase(),
                        style: TextStyle(fontSize: 8, color: grey),
                      ),
                      Text(
                        "04/2021",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
