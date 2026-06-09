import 'package:flutter/material.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const TechHB());

class TechHB extends StatelessWidget {
  const TechHB({Key key}) : super(key: key);

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
                    'Title: The Tech Contracts Handbook: Cloud Computing Agreements, Software Licenses, and Other IT Contracts for Lawyers and Business people',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text('Author Name: David W. Tollen',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text(
                  'Description: The Tech Contracts Handbook is a practical, user-friendly reference manual and training guide on cloud computing agreements, software licenses, and other IT contracts. It is a clause-by-clause "how to" resource, covering the issues at stake and offering negotiation tips and sample contract language.\n\nThe Handbook is for both lawyers and businesspeople -- including contract managers, procurement officers, in-house and outside counsel, salespeople, and anyone else responsible for getting IT deals done. Perhaps, most important, it uses clear, simple English, like a good contract.',
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
                child: Text('ISBN: 978-1-6342-5178-5',
                    style: TextStyle(fontSize: 15.0)),
              ),
            ]),
          ),
        ));
  }
}
