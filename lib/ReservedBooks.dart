import 'package:flutter/material.dart';
import 'package:skylibrary/Home.dart';

void main() => runApp(const ReservedBooks());

class ReservedBooks extends StatelessWidget {
  const ReservedBooks({Key key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Home())),
        ),
        backgroundColor: Color(0xFF275d9b),
        title: const Text('Reserved Books', style: TextStyle(fontSize: 20.0)),
        centerTitle: true,
      ),
    );
  }
}
