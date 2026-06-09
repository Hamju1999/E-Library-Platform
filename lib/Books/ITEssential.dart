import 'package:flutter/material.dart';
import 'package:skylibrary/Books%20Reserved/ReserveITE.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const ITEssential());

class ITEssential extends StatelessWidget {
  const ITEssential({Key key}) : super(key: key);

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
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => GeneralBooks(1))),
        ),
        backgroundColor: Color(0xFF275d9b),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text(
                'Title: Information Technology Essentials Volume 1: Introduction to Information Systems',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text('Author Name: Eric Frick',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text(
              'Description: Information Technology Essentials is designed to be an introduction to Information Systems. The material is similar to many of the topics that first-year information technology students study. \n\nThis book is for anyone who wants to learn about the Information Technology field, but is ideal for people who are just getting started. The material will provide the reader with a solid understanding of many of the concepts that drive one of the most critical industries in today world. ',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text('ISBN: 978-1-7081-7514-6',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: RaisedButton(
              elevation: 5.0,
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'Your Book is Reserved',
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                    ),
                  ),
                  content: const Text(
                    'Press Button Below to View Your Book',
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                    ),
                  ),
                  actions: <Widget>[
                    RaisedButton(
                      elevation: 5.0,
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => ReserveITE())),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      color: Color(0xff275d9b),
                      child: Text(
                        'VIEW BOOK',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              color: Color(0xFF275d9b),
              child: Text(
                'RESERVE',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
