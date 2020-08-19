import 'package:flutter/material.dart';

import './main_home_screen.dart';

class RegistraionCode extends StatefulWidget {
  @override
  _RegistraionCodeState createState() => _RegistraionCodeState();
}

class _RegistraionCodeState extends State<RegistraionCode> {
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
            'Registration',
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                'to complete your registration, enter the code wehave sent to ',
              ),
              SizedBox(
                height: 486,
              ),
              Align(
                //alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  child: Container(
                    width: double.infinity,
                    child: const Text(
                      'Submit',
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
                        builder: (BuildContext context) => MainHomeScreen(),
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
