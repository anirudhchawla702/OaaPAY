import 'package:flutter/material.dart';

import './Welcome_Page.dart';
import './registration_Code.dart';

class ResgistraionPage extends StatefulWidget {
  @override
  _ResgistraionPageState createState() => _ResgistraionPageState();
}

class _ResgistraionPageState extends State<ResgistraionPage> {
  var _EmailController = TextEditingController();
  final FocusNode _EmailFocus = FocusNode();
  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

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
                    controller: _EmailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    focusNode: _EmailFocus,
                    validator: (value) {
                      if (!emailRegex.hasMatch(value)) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "We will send the registration code to your Email",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 380,
              ),
              Align(
                //alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  child: Container(
                    width: double.infinity,
                    child: const Text(
                      'Send Code',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  color: Colors.pink,
                  textColor: Colors.white,
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => RegistraionCode(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
