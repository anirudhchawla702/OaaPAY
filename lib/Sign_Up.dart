import 'dart:convert' as JSON;

import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

import './Google_sign_in.dart';
import './Registration_PAGE.dart';
import './Welcome_Page.dart';
import './main_home_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _NameController = TextEditingController();
  var _EmailController = TextEditingController();
  var _PasswordController = TextEditingController();
  var _ConfirmPasswordController = TextEditingController();
  final FocusNode _NameFocus = FocusNode();
  final FocusNode _EmailFocus = FocusNode();
  final FocusNode _PasswordFocus = FocusNode();
  final FocusNode _ConfirmPasswordFocus = FocusNode();

  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();

  final _formKey = GlobalKey<FormState>();
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    _NameFocus.dispose();
    _EmailFocus.dispose();
    _PasswordFocus.dispose();
    _ConfirmPasswordFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 4,
        backgroundColor: Colors.purple[800],
        title: Text(
          "Sign Up Page",
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
      backgroundColor: Colors.grey[350],
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Form(
                  key: _formKey,
                  autovalidate: false,
                  child: Container(
                    height: 420,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ListView(
                        children: <Widget>[
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _NameController,
                                  decoration: InputDecoration(
                                    labelText: "Name",
                                  ),
                                  focusNode: _NameFocus,
                                  onFieldSubmitted: (term) {
                                    _fieldFocusChange(
                                        context, _NameFocus, _EmailFocus);
                                  },
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Please enter name';
                                    }
                                    return null;
                                  },
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
                                  focusNode: _EmailFocus,
                                  onFieldSubmitted: (term) {
                                    _fieldFocusChange(
                                        context, _EmailFocus, _PasswordFocus);
                                  },
                                  validator: (value) {
                                    if (!emailRegex.hasMatch(value)) {
                                      return 'Please enter valid email';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  autofocus: false,
                                  key: _passwordFieldKey,
                                  obscureText: true,
                                  controller: _PasswordController,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                  ),
                                  focusNode: _PasswordFocus,
                                  onFieldSubmitted: (term) {
                                    _fieldFocusChange(context, _PasswordFocus,
                                        _ConfirmPasswordFocus);
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  autofocus: false,
                                  controller: _ConfirmPasswordController,
                                  decoration: InputDecoration(
                                    labelText: "Confirm Password",
                                  ),
                                  focusNode: _ConfirmPasswordFocus,
                                  onFieldSubmitted: (value) {
                                    _ConfirmPasswordFocus.unfocus();
                                  },
                                  validator: (value) {
                                    if (value !=
                                        _passwordFieldKey.currentState.value) {
                                      return 'Password do not match';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 6),
                            child: RaisedButton(
                              child: const Text(
                                'SIGN UP',
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
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ResgistraionPage(),
                                    ),
                                  );
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
                height: 20,
              ),
              _signInButton(),
              SizedBox(
                height: 1,
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
                          image: AssetImage("assets/images/facebook_logo.png"),
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
                return MainHomeScreen();
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
