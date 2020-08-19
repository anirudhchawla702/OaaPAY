import 'package:flutter/material.dart';

import './merchant_Details.dart';

class WebsiteClick extends StatefulWidget {
  @override
  _WebsiteClickState createState() => _WebsiteClickState();
}

class _WebsiteClickState extends State<WebsiteClick> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: Center(
            child: new Text(
              "On Website",
              textAlign: TextAlign.center,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MerchantDetails(),
                  ),
                );
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 18.0,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: SizedBox(
                width: 15,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Icon(
                        Icons.help_outline,
                        size: 18.0,
                      ),
                    ),
                    Text(
                      "help",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 26.0,
                  top: 45,
                ),
                child: Text(
                  "Terms & Conditions",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 26.0,
                  top: 45,
                ),
                child: Text(
                  "Return Policy",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 26.0,
                  top: 45,
                ),
                child: Text(
                  "FAQ",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            InkWell(
              onTap: () {},
              child: Center(
                child: new Container(
                  width: 210.0,
                  height: 35.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border.all(
                      color: Colors.purple,
                      width: 1.5,
                    ),
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: new Center(
                    child: new Text(
                      'Continue To website',
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
          ],
        ),
      ),
    );
  }
}
