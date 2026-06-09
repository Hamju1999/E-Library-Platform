import 'package:flutter/material.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const ITE());

class ITE extends StatelessWidget {
  const ITE({Key key}) : super(key: key);

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
            ]),
          ),
        ));
  }
}
