import 'package:flutter/material.dart';

import './merchant_Details.dart';

class DeliveryClick extends StatefulWidget {
  @override
  _DeliveryClickState createState() => _DeliveryClickState();
}

class _DeliveryClickState extends State<DeliveryClick> {
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
              "For Delivery",
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    "Give this code to the call center\nduring call",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Card(
                color: Colors.lightBlue[100],
                child: Container(
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 26.0,
                  right: 185,
                ),
                child: Text(
                  "ANK Wear Hotline : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 5,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.phone_in_talk,
                        color: Colors.purple,
                        size: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      right: 75,
                    ),
                    child: Text(
                      "19XXX",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: new Container(
                        width: 90.0,
                        height: 35.0,
                        decoration: new BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: new Border.all(
                            color: Colors.lightBlueAccent,
                            width: 1.5,
                          ),
                          borderRadius: new BorderRadius.circular(6.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Call',
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 26.0,
                  right: 185,
                ),
                child: Text(
                  "Here is how it works",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 12,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.event,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Text(
                          "Call the vendor",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.fastfood,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Text(
                          "Place your order",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.code,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        Text(
                          "Give the code to the operator",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
