import 'package:flutter/material.dart';

import './Welcome_Page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          elevation: 4,
          backgroundColor: Colors.purple[800],
          title: Text(
            "Registration",
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => WelcomePage(),
                ),
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Your Email",
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "We will send registration code to this Email",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 430,
              ),
              Align(
                //alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  child: const Text(
                    'Send Code',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.pink,
                  textColor: Colors.white,
                  elevation: 5,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
