import 'package:flutter/material.dart';

import './gricview_ads.dart';

class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                    Icons.notifications,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 19,
                      left: 50,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: new Container(
                        width: 100.0,
                        height: 28.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.purple,
                            width: 1.7,
                          ),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'All',
                            style: new TextStyle(
                              fontSize: 15.0,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 19,
                      left: 10,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: new Container(
                        width: 100.0,
                        height: 28.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.lightBlueAccent,
                            width: 1.7,
                          ),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Web Ads',
                            style: new TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 19,
                      left: 10,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: new Container(
                        width: 100.0,
                        height: 28.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.lightBlueAccent,
                            width: 1.7,
                          ),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Video Ads',
                            style: new TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 300,
                  left: 6,
                  top: 10,
                ),
                child: Text(
                  'Standard',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
              GridviewAds(),
            ],
          ),
        ),
      ),
    );
  }
}
