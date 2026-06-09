import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:skylibrary/GeneralBooks.dart';

void main() => runApp(const Midnight2());

class Midnight2 extends StatelessWidget {
  const Midnight2({Key key}) : super(key: key);

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
          title: new Text("Midnight Sun"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Midnight2())),
          ),
          backgroundColor: Color(0xFF275d9b),
        ),
        body: Container(
            child: Center(
              child: PDF.asset(
                "pdf/Midnight.pdf",
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
                  .push(MaterialPageRoute(builder: (context) => GeneralBooks(3))),
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
                child:
                Text('Title: Midnight Sun', style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text('Author Name: Stephenie Meyer',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF275d9b)),
                ),
                child: Text(
                  'Description: When Edward Cullen and Bella Swan met in Twilight, an iconic love story was born. But until now, fans have heard only Bella side of the story. At last, readers can experience Edward version in the long-awaited companion novel, Midnight Sun.\n\nThis unforgettable tale as told through Edward eyes takes on a new and decidedly dark twist. Meeting Bella is both the most unnerving and intriguing event he has experienced in all his years as a vampire. As we learn more fascinating details about Edward past and the complexity of his inner thoughts, we understand why this is the defining struggle of his life. How can he justify following his heart if it means leading Bella into danger?',
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
                child: Text('ISBN: 978-0-3490-0363-4',
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
