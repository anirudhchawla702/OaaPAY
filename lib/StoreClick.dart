import 'package:flutter/material.dart';

import './merchant_Details.dart';

class StoreClick extends StatefulWidget {
  @override
  _StoreClickState createState() => _StoreClickState();
}

class _StoreClickState extends State<StoreClick> {
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
              "In Store",
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
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  "Show the QR code to\nthe cashier",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 85,
                ),
                child: Text(
                  "Or give him this code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.purple,
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
