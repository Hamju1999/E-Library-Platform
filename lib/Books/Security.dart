import 'package:flutter/material.dart';
import 'package:skylibrary/CurrentCourses.dart';

void main() => runApp(const Security());

class Security extends StatelessWidget {
  const Security({Key key}) : super(key: key);

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
              .push(MaterialPageRoute(builder: (context) => CurrentCourses())),
        ),
        backgroundColor: Color(0xFF275d9b),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF275d9b)),
          ),
          child: Text('Title: Fundamentals of Information Systems Security',
              style: TextStyle(fontSize: 15.0)),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF275d9b)),
          ),
          child: Text('Author Name: David Kim & Michael G. Solomon',
              style: TextStyle(fontSize: 15.0)),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF275d9b)),
          ),
          child: Text(
            'Description: This book provides a comprehensive overview of the essential concepts readers must know as they pursue careers in information systems security. The text opens with a discussion of the new risks, threats, and vulnerabilities associated with the transition to a digital world. Part 2 presents a high level overview of the Security+ Exam and provides students with information as they move toward this certification.',
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
          child:
              Text('ISBN: 978-1-284-11645-8', style: TextStyle(fontSize: 15.0)),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF275d9b)),
          ),
          child: Text('Barcode:', style: TextStyle(fontSize: 15.0)),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          height: 60.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/SBAR.jpg'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
          ),
        ),
      ]),
    ));
  }
}
