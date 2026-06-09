import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:skylibrary/Books Reserved//ReserveAudit.dart';

void main() => runApp(const Audit2());

class Audit2 extends StatelessWidget {
  const Audit2({Key key}) : super(key: key);

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
          title: new Text("Audit & Control"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Audit2())),
          ),
          backgroundColor: Color(0xFF275d9b),
        ),
        body: Container(
            child: Center(
          child: PDF.asset(
            "pdf/Audit.pdf",
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
              .push(MaterialPageRoute(builder: (context) => ReserveAudit())),
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
                'Title: Information Technology Control and Audit, Fifth Edition',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text('Author Name: Angel R. Otero',
                style: TextStyle(fontSize: 15.0)),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF275d9b)),
            ),
            child: Text(
              'Description: The new fifth edition of Information Technology Control and Audit has been significantly revised to include a comprehensive overview of the IT environment, including revolutionizing technologies, legislation, audit process, governance, strategy, and outsourcing, among others. This new edition also outlines common IT audit risks, procedures, and involvement associated with major IT audit areas. It further provides cases featuring practical IT audit scenarios, as well as sample documentation to design and perform actual IT audit work. Filled with up-to-date audit concepts, tools, techniques, and references for further reading, this revised edition promotes the mastery of concepts, as well as the effective implementation and assessment of IT controls by organizations and auditors.',
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
            child: Text('ISBN: 978-1-4987-5228-2',
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
