import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:skylibrary/Books%20Reserved/ReserveLie.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const Lies());

class Lies extends StatelessWidget {
  const Lies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class PDFScreen extends StatefulWidget {
  @override
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("One Of US Is Lying"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Lies())),
          ),
          backgroundColor: Color(0xFF275d9b),
        ),
        body: Container(
            child: Center(
          child: PDF.asset(
            "pdf/Lie.pdf",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        )));
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
              .push(MaterialPageRoute(builder: (context) => GeneralBooks(2))),
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
            child: Text('Title: One of Us Is Lying',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text('Author Name: Karen M. McManus',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text(
              'Description: “Pretty Little Liars meets The Breakfast Club” (Entertainment Weekly) in this addictive mystery about what happens when five strangers walk into detention and only four walk out alive.\n\nEveryone has secrets, right? What really matters is how far you would go to protect them',
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
            child: Text('ISBN: 978-1-5247-1468-0',
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
                              builder: (context) => ReserveLie())),
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: RaisedButton(
              elevation: 5.0,
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PDFScreen(),
                    ))
              },
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              color: Color(0xFF275d9b),
              child: Text(
                'VIEW PDF',
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
