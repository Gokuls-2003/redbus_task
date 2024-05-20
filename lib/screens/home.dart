// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:redbus_app/screens/booking.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  bool _isBookingForWomen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/redbus.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/train.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ],
        ),
      ),
      body: buildUI(),
    );
  }

  Widget buildUI() {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Bus Tickets',
              style: TextStyle(fontSize: 10, color: Colors.red),
            ),
            Text(
              'Train Tickets',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "  Bus Tickets",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 2,
        ),
        Text("   Exciting offers & discounts"),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'From', icon: Icon(Icons.bus_alert)),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'To', icon: Icon(Icons.bus_alert)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Date of Journey"),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child:
                          Text("Today", style: TextStyle(color: Colors.white))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: Text(
                        "Tomorrow",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[300],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.woman_2_sharp),
              SizedBox(
                width: 10,
              ),
              Text(
                "Booking for women",
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              Switch(
                value: _isBookingForWomen,
                onChanged: (value) {
                  setState(() {
                    _isBookingForWomen = value;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Booking_Bus()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search Buses',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/train.png",
              height: 100,
              width: 100,
            ),
            Text(
              "Book trains for Ganpati",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Book now to get confrimed ticket")
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Get 80% off using code ",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SUPERBRO",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.book,
                ),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.help),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle),
                iconSize: 30,
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
