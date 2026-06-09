import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const Strategy());

class Strategy extends StatelessWidget {
  const Strategy({Key key}) : super(key: key);

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
          title: new Text("Art of Business Strategy"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Strategy())),
          ),
          backgroundColor: Color(0xFF275d9b),
        ),
        body: Container(
            child: Center(
              child: PDF.asset(
                "pdf/BusinessStrategy.pdf",
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
                child: Text(
                    'Title: Your Next Five Moves: Master the Art of Business Strategy',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text('Author Name: Greg Dinkin and Patrick Bet-David',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text(
                  'Description: Both successful entrepreneurs and chess grandmasters have the vision to look at the pieces in front of them and anticipate their next five moves. In this book, Patrick Bet-David translates this skill into a valuable methodology that applies to high performers at all levels of business. Whether you feel like you’ve hit a wall, lost your fire, or are looking for innovative strategies to take your business to the next level, Your Next Five Moves has the answers. You will gain: \n\nCLARITY on what you want and who you want to be. \n\nSTRATEGY to help you reason in the war room and the board room. \n\nGROWTH TACTICS for good times and bad. \n\nSKILLS for building the right team based on strong values. \n\nINSIGHT on power plays and the art of applying leverage.',
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
                child: Text('ISBN: 978-1-9821-5480-6',
                    style: TextStyle(fontSize: 15.0)),
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
