import 'package:flutter/material.dart';

import './merchant_Details.dart';

class CashBack extends StatefulWidget {
  @override
  _CashBackState createState() => _CashBackState();
}

class _CashBackState extends State<CashBack> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.purple[800],
          title: new Text("My Profile"),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset(
                'assets/images/dummyprofilepic.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.reorder,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'All',
                          style: TextStyle(
                            color: Colors.cyanAccent[400],
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Men',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.work,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Women',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.devices,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Devices',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.group_add,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Gadgets',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.gamepad,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Gaming',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                top: 28,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'All',
                    style: TextStyle(
                      color: Colors.cyanAccent[400],
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.store,
                      color: Colors.cyanAccent[400],
                      size: 28,
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Text(
                      'In Store',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.directions_bike,
                      color: Colors.cyanAccent[400],
                      size: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Text(
                      'For Delivery',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.web,
                      color: Colors.cyanAccent[400],
                      size: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Text(
                      'On Website',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: 300,
                      height: 240,
                      color: Colors.green,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return MerchantDetails();
                          },
                        ),
                      );
                    },
                  ),
                  Container(
                    width: 300,
                    height: 240,
                    color: Colors.black,
                  ),
                  Container(
                    width: 300,
                    height: 240,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 300,
                    height: 240,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 240,
                    color: Colors.green,
                  ),
                  Container(
                    width: 300,
                    height: 240,
                    color: Colors.black,
                  ),
                  Container(
                    width: 300,
                    height: 240,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 300,
                    height: 240,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
//
      ),
    );
  }
}
