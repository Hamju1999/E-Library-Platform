import 'package:flutter/material.dart';
import 'package:skylibrary/CurrentCourses.dart';

void main() => runApp(const Enterprise());

class Enterprise extends StatelessWidget {
  const Enterprise({Key key}) : super(key: key);

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
          child: Text('Title: Designing Enterprise Information Systems',
              style: TextStyle(fontSize: 15.0)),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF275d9b)),
          ),
          child: Text('Author Name: Boris Shishkov',
              style: TextStyle(fontSize: 15.0)),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF275d9b)),
          ),
          child: Text(
            'Description: This book brings together enterprise modeling and software specification, providing a conceptual background and methodological guidelines that concern the design of enterprise information systems. In this, two corresponding disciplines (enterprise engineering and software engineering) are considered in a complementary way. This is how the widely recognized gap between domain experts and software engineers could be effectively addressed.',
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
              Text('ISBN: 978-3-030-22440-0', style: TextStyle(fontSize: 15.0)),
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
              image: AssetImage('images/ENBAR.jpg'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
          ),
        ),
      ]),
    ));
  }
}
