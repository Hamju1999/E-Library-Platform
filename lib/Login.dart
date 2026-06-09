import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:skylibrary/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final _auth = FirebaseAuth.instance;
String userid = '';
String password = '';

class _LoginState extends State<Login> {
  bool _isLogin = false;
  bool _rememberMe = false;

  Widget _Logo() {
    return Container(
      height: 90.0,
      width: 300.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/Logo.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }

  Widget _UserIDEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.text,
            onChanged: (value) {
              userid = value;
            },
            style: TextStyle(
              color: Color(0xFF275d9b),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(0xFFf3f3f3),
              filled: true,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xFF275d9b),
              ),
              hintText: 'User ID',
            ),
          ),
        ),
      ],
    );
  }

  Widget _Password() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              password = value;
            },
            style: TextStyle(
              color: Color(0xFF275d9b),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(0xFFf3f3f3),
              filled: true,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF275d9b),
              ),
              hintText: 'Password',
            ),
          ),
        ),
      ],
    );
  }

  Widget _RememberMe() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.grey),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Color(0xFF275d9b),
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
          ),
        ],
      ),
    );
  }

  Widget _Login() {
    final _auth = FirebaseAuth.instance;
    var _isLoading = false;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () async {
          UserCredential authResult;
          try {
            setState(() {
              _isLoading = true;
            });
            if (_isLogin) {
              authResult = await _auth.signInWithEmailAndPassword(
                email: userid,
                password: password,
              );
            } else {
              await _auth.signInWithEmailAndPassword(
                  email: userid, password: password);
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (contex) => Home(),
                ),
              );
            }
          } on FirebaseAuthException catch (error) {
            var message = 'An error has occured.'; // default message
            switch (error.code) {
              case 'EMAIL_NOT_FOUND':
                message =
                    'There is no user account with the email address provided.';
                break;
              case 'EMAIL_EXISTS':
                message =
                    'The email address is already in use by another account.';
                break;
              case 'INVALID_PASSWORD':
                message = 'Invalid password. Please enter correct password.';
                break;
            }
            setState(() {
              _isLoading = false;
            });
            showDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: const Text(
                  'An error occured',
                  style: TextStyle(
                    color: Color(0xFF275d9b),
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                  ),
                ),
                content: Text(
                  error.message.toString(),
                  style: TextStyle(
                    color: (Colors.black),
                    fontSize: 12.0,
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Color(0xFF275d9b),
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        color: Color(0xFF275d9b),
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _Logo(),
                      SizedBox(height: 50.0),
                      _UserIDEmail(),
                      _Password(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _RememberMe(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _Login(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
