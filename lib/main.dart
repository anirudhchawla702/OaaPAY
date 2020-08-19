import 'package:flutter/material.dart';
import 'package:oaa_pay/Welcome_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        children: <Widget>[
          Image.asset(
            "assets/images/OaaaPAY.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/create account.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/play and earn.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/earn and redeem.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/redeem earnings.jpg",
            fit: BoxFit.cover,
          ),
          MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: "/Welcome-Page",
            routes: {
              "/Welcome-Page": (context) => WelcomePage(),
            },
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
