import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './CashBack.dart';
import './DeliveryClick.dart';
import './StoreClick.dart';
import './Surveys.dart';
import './Task.dart';
import './WebsiteClick.dart';
import './ads.dart';

class MerchantDetails extends StatefulWidget {
  @override
  _MerchantDetailsState createState() => _MerchantDetailsState();
}

class _MerchantDetailsState extends State<MerchantDetails> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MerchantDetails(),
    CashBack(),
    Task(),
    Surveys(),
    Ads(),
  ];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
                onTap: onTabTapped,
                currentIndex: _currentIndex,
                selectedItemColor: Colors.purple,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    title: Text(
                      'Home',
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    title: Text(
                      'Cashback',
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.access_alarm,
                    ),
                    title: Text(
                      'Tasks',
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.business,
                    ),
                    title: Text(
                      'Surveys',
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.school,
                    ),
                    title: Text(
                      'Ads',
                    ),
                  ),
                ]),
          ),
        ),
        appBar: _currentIndex == 0
            ? AppBar(
                backgroundColor: Colors.purple[800],
                title: new Text("My Profile"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/dummyprofilepic.jpg',
                      height: 120,
                      width: 120,
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
                          Icons.notifications,
                          size: 26.0,
                        ),
                      )),
                ],
              )
            : null,
        body: _currentIndex == 0
            ? SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12.0,
                            top: 14,
                          ),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(6.0),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.deepPurple,
                                    Colors.pink,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                top: 20,
                              ),
                              child: Text(
                                "ANK Wear\nFashion",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    bottom: 25,
                                  ),
                                  child: Text(
                                    "You have 30 exclusive points",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 14,
                                    bottom: 16,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "156\nfavorites",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    bottom: 16,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.star,
                                      size: 35,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    bottom: 16,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.share,
                                      size: 35,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: Container(
                          height: 1.5,
                          width: double.infinity,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          "%5 cash back on any of your purchases from ANK\n"
                          "Wear , check your nearest branch",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Exp Aug 30, 2020",
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                        ),
                        child: Container(
                          height: 1.5,
                          width: double.infinity,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Get Offer :",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 1.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 19,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return WebsiteClick();
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 1,
                                  child: new Container(
                                    width: double.infinity,
                                    height: 75.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.red[50],
                                      border: new Border.all(
                                        color: Colors.white,
                                        width: 1.7,
                                      ),
                                      borderRadius:
                                          new BorderRadius.circular(8.0),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.web,
                                              color: Colors.purple,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "On Website",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        Container(
                                          height: 90,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey[100],
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                              )),
                                          child: Center(
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.blue,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 19,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          DeliveryClick(),
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 1,
                                  child: new Container(
                                    width: double.infinity,
                                    height: 75.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.red[50],
                                      border: new Border.all(
                                        color: Colors.white,
                                        width: 1.7,
                                      ),
                                      borderRadius:
                                          new BorderRadius.circular(8.0),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.motorcycle,
                                              color: Colors.purple,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "For Delivery",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 115,
                                        ),
                                        Container(
                                          height: 90,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey[100],
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                              )),
                                          child: Center(
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.blue,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 19,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          StoreClick(),
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 1,
                                  child: new Container(
                                    width: double.infinity,
                                    height: 75.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.red[50],
                                      border: new Border.all(
                                        color: Colors.white,
                                        width: 1.7,
                                      ),
                                      borderRadius:
                                          new BorderRadius.circular(8.0),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.web,
                                              color: Colors.purple,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "In Store",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 160,
                                        ),
                                        Container(
                                          height: 90,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey[100],
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                              )),
                                          child: Center(
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.blue,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "Check Branches",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : _children[_currentIndex],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
