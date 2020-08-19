import 'package:flutter/material.dart';

import './gricview_ads.dart';
import './merchant_Details.dart';

class StartingHome extends StatefulWidget {
  @override
  _StartingHomeState createState() => _StartingHomeState();
}

class _StartingHomeState extends State<StartingHome> {
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
                    Icons.notifications_none,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      left: 18,
                    ),
                    child: Text(
                      "Premium Offers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 157,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      left: 18,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 9,
              ),
              InkWell(
                onTap: () {},
                child: new Container(
                  width: double.infinity,
                  height: 55.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border.all(
                      color: Colors.yellow,
                      width: 1.5,
                    ),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 18,
                ),
                child: Text(
                  "Top Offers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                      top: 13.0,
                    ),
                    child: Text(
                      "Top Tasks",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 13.0,
                      left: 18,
                    ),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              GridviewAds(),
            ],
          ),
        ),
      ),
    );
  }
}
