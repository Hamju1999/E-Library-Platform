import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:skylibrary/Books%20Reserved/ReserveStart.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const StartingBusiness());

class StartingBusiness extends StatelessWidget {
  const StartingBusiness({Key key}) : super(key: key);

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
          title: new Text("Starting A Business"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StartingBusiness())),
          ),
          backgroundColor: Color(0xFF275d9b),
        ),
        body: Container(
            child: Center(
          child: PDF.asset(
            "pdf/StartingBusiness.pdf",
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
              .push(MaterialPageRoute(builder: (context) => GeneralBooks(0))),
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
            child: Text('Title: Starting a Business QuickStart Guide',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text('Author Name: Ken Colwell',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text(
              'Description: Have you ever dreamt of starting your own business and living life on your terms? \nThis book shows you EXACTLY what you need to know to stand out from the crowd! \n\nDo you have an idea for an amazing product or service but you aren’t sure how to build a business around it? \nThen you NEED this book. Buy now and start reading today! \n\nAre you a current business owner who struggles to identify your customers and deliver true world-class value? \nEverything you need to know is included in these pages! \n\nDo you want to build your hobby business into a fully-fledged venture that will help you build the life you deserve? \nThen you NEED this book. Buy now and start reading today!',
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
            child: Text('ISBN: 978-1-9450-5182-1',
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
                              builder: (context) => ReserveStart())),
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
