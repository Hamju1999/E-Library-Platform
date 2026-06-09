import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const Harry2());

class Harry2 extends StatelessWidget {
  const Harry2({Key key}) : super(key: key);

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
          title: new Text("Harry Potter"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Harry2())),
          ),
          backgroundColor: Color(0xFF275d9b),
        ),
        body: Container(
            child: Center(
              child: PDF.asset(
                "pdf/Harry.pdf",
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
                child: Text(
                    'Title: Harry Potter and the Cursed Child, Parts One and Two',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text('Author Name: J. K. Rowling',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text(
                  'Description: It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband, and father of three school-age children.While Harry grapples with a past that refuses to stay where it belongs, his youngest son, Albus, must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: Sometimes, darkness comes from unexpected places.',
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
                child: Text('ISBN: 978-1-3382-1666-0',
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
