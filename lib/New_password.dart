import 'package:flutter/material.dart';

import './Welcome_Page.dart';
import './reset_code.dart';

class Newpassword extends StatefulWidget {
  @override
  _NewpasswordState createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  var _PasswordController = TextEditingController();
  var _ConfirmPasswordController = TextEditingController();
  final FocusNode _PasswordFocus = FocusNode();
  final FocusNode _ConfirmPasswordFocus = FocusNode();

  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

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
                "Reset Password",
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          VerificationCodeInput(),
                    ),
                  );
                },
              ),
            ),
            body: Center(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autofocus: false,
                  key: _passwordFieldKey,
                  obscureText: true,
                  controller: _PasswordController,
                  decoration: InputDecoration(
                    labelText: "New Password",
                  ),
                  focusNode: _PasswordFocus,
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(
                        context, _PasswordFocus, _ConfirmPasswordFocus);
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
//                  validator: (value) {
//                    if (value !=
//                        _passwordFieldKey.currentState.value) {
//                      return 'Password do not match';
//                    }
//                    return null;
//                  },
                ),
                SizedBox(
                  height: 390,
                ),
                Align(
                  //alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    child: Container(
                      width: double.infinity,
                      child: const Text(
                        'Confirm',
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
                          builder: (BuildContext context) => WelcomePage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ))));
  }

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
