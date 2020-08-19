import 'dart:convert' as JSON;

import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

import './ForgotScreen.dart';
import './Google_sign_in.dart';
import './HomeScreen.dart';
import './Sign_Up.dart';

class WelcomePage extends StatefulWidget {
  static const routeName = "/Welcome-Page";

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var _EmailController = TextEditingController();
  var _PasswordController = TextEditingController();
  final FocusNode _EmailFocus = FocusNode();
  final FocusNode _PasswordFocus = FocusNode();

  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();

  final _formKey = GlobalKey<FormState>();
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[350],
        body: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(
                  child: Form(
                    key: _formKey,
                    autovalidate: false,
                    child: Container(
                      height: 390,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListView(
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Welcome,',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 170,
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        SignUp(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Sign Up",
                                            style: TextStyle(
                                              color: Colors.pink,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Sign in to Continue',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _EmailController,
                              decoration: InputDecoration(
                                labelText: "Email",
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (!emailRegex.hasMatch(value)) {
                                  return 'Please enter valid email';
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              focusNode: _EmailFocus,
                              onFieldSubmitted: (term) {
                                _fieldFocusChange(
                                    context, _EmailFocus, _PasswordFocus);
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _PasswordController,
                              key: _passwordFieldKey,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                              ),
                              textInputAction: TextInputAction.done,
                              focusNode: _PasswordFocus,
                              onFieldSubmitted: (value) {
                                _PasswordFocus.unfocus();
                              },
                              validator: (value) {
                                if (value !=
                                    _passwordFieldKey.currentState.value) {
                                  return 'This Value Cant Be Empty';
                                }
                                return null;
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            ForgotScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3, right: 6),
                              child: RaisedButton(
                                child: const Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                color: Colors.pink,
                                textColor: Colors.white,
                                elevation: 5,
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    print("Process data");
                                  } else {
                                    print('Error');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "-OR-",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                _signInButton(),
                SizedBox(
                  height: 30,
                ),
                OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {
                    _loginWithFB();
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 0,
                  borderSide: BorderSide(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                            image:
                                AssetImage("assets/images/facebook_logo.png"),
                            height: 35.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage("assets/images/google_logo.png"),
                height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _loginWithFB() async {
    final result = await facebookLogin.logInWithReadPermissions(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          userProfile = profile;
          _isLoggedIn = true;
        });
        break;

      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false);
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false);
        break;
    }
  }

  _logout() {
    facebookLogin.logOut();
    setState(() {
      _isLoggedIn = false;
    });
  }
}
