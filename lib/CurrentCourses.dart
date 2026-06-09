import 'package:flutter/material.dart';
import 'package:skylibrary/Home.dart';
import 'Books/Enterprise.dart';
import 'Books/Security.dart';

void main() => runApp(const CurrentCourses());

class CurrentCourses extends StatelessWidget {
  const CurrentCourses({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Home())),
        ),
        backgroundColor: Color(0xFF275d9b),
        title: const Text('Current Courses', style: TextStyle(fontSize: 20.0)),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 0.0),
            child: FlatButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Enterprise())),
              child: Column(
                children: <Widget>[
                  Image.asset("images/Enterprise.jpg", width: 200, height: 200),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Security())),
              child: Column(
                children: <Widget>[
                  Image.asset("images/Security.jpg", width: 200, height: 200),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
