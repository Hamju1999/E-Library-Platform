import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:skylibrary/ComputerReservation.dart';
import 'package:skylibrary/CurrentCourses.dart';
import 'package:skylibrary/GeneralBooks.dart';
import 'package:skylibrary/ReservedBooks.dart';
import 'package:skylibrary/TableReservation.dart';
import 'Login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
_signOut() async {
  await _firebaseAuth.signOut();
}

class _HomeState extends State<Home> {
  @override
  Widget _ID() {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          '   Name:  \n\n   ID: ',
          style: TextStyle(fontSize: 15, color: Color(0xFF275d9b)),
        ),
      ),
    );
  }

  Widget _Logo() {
    return Container(
      height: 90.0,
      width: 250.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/Logo.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }

  Widget _Menu1() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CurrentCourses())),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Image.asset("images/Current.jpg", width: 50, height: 50),
              ),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "Current Course",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(width: 10),
        FlatButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => GeneralBooks(0))),
          child: Column(
            children: <Widget>[
              Image.asset("images/General.jpg", width: 50, height: 50),
              SizedBox(height: 10),
              Text(
                "General Books",
                style: TextStyle(
                  color: Color(0xFF275d9b),
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget _Menu2() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => TableReservation())),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Image.asset("images/Table.jpg", width: 50, height: 50),
              ),
              SizedBox(height: 10),
              Text(
                "Table Reservation",
                style: TextStyle(
                  color: Color(0xFF275d9b),
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        FlatButton(
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ComputerReservation())),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5),
                child:
                    Image.asset("images/Computer.jpg", width: 50, height: 50),
              ),
              SizedBox(height: 10),
              Text(
                "Computer Reservation",
                style: TextStyle(
                  color: Color(0xFF275d9b),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  Widget _Menu3() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ReservedBooks())),
          child: Column(
            children: <Widget>[
              Image.asset("images/Borrowed.jpg", width: 50, height: 50),
              SizedBox(height: 15),
              Text(
                "Reserved Books",
                style: TextStyle(
                  color: Color(0xFF275d9b),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  Widget _Logout() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () async {
          await _signOut();
          if (_firebaseAuth.currentUser == null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        color: Color(0xFF275d9b),
        child: Text(
          'LOGOUT',
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
                    vertical: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _ID(),
                      SizedBox(height: 35.0),
                      _Logo(),
                      SizedBox(height: 35.0),
                      _Menu1(),
                      SizedBox(height: 35.0),
                      _Menu2(),
                      SizedBox(height: 35.0),
                      _Menu3(),
                      SizedBox(height: 20.0),
                      _Logout(),
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
