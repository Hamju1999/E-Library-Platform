import 'package:flutter/material.dart';
import 'package:skylibrary/Books/AuditControl.dart';
import 'package:skylibrary/Books/BusinessBook.dart';
import 'package:skylibrary/Books/BusinessStrategy.dart';
import 'package:skylibrary/Books/Harry.dart';
import 'package:skylibrary/Home.dart';
import 'package:skylibrary/Books/ITEssential.dart';
import 'package:skylibrary/Books/ITManagement.dart';
import 'package:skylibrary/Books/KiteRunner.dart';
import 'package:skylibrary/Books/Lies.dart';
import 'package:skylibrary/Books/Midnight.dart';
import 'package:skylibrary/Books/StartingBusiness.dart';
import 'package:skylibrary/Books/TechHandBook.dart';
import 'package:skylibrary/Books/Traction.dart';

void main() => runApp(GeneralBooks(0));

class GeneralBooks extends StatelessWidget {
  int selectedPage;
  GeneralBooks(this.selectedPage);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new DefaultTabController(
          initialIndex: selectedPage,
          length: 4,
          child: new Scaffold(
            appBar: new AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home())),
              ),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        showSearch(context: context, delegate: DataSearch());
                      },
                      child: Icon(
                        Icons.search,
                        size: 26.0,
                      ),
                    )),
              ],
              title: const Text('General Books'),
              backgroundColor: Color(0xFF275d9b),
              bottom: new TabBar(isScrollable: true, tabs: [
                new Tab(
                  text: 'Business',
                ),
                new Tab(
                  text: 'IT',
                ),
                new Tab(
                  text: 'Novel',
                ),
                new Tab(
                  text: 'Recommendations',
                ),
              ]),
            ),
            body: new TabBarView(
              children: [
                new ListView(
                  children: BusB(context),
                ),
                new ListView(
                  children: ITB(context),
                ),
                new ListView(
                  children: GenB(context),
                ),
                new ListView(
                  children: Rec(context),
                ),
              ],
            ),
          ),
        ));
  }

  List<Widget> BusB(BuildContext context) => <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BusinessStrategy())),
            child: Column(
              children: <Widget>[
                Image.asset("images/BStrat.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BusinessBook())),
            child: Column(
              children: <Widget>[
                Image.asset("images/SimpBus.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StartingBusiness())),
            child: Column(
              children: <Widget>[
                Image.asset("images/StartBus.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
      ];

  List<Widget> ITB(BuildContext context) => <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TechHandBook())),
            child: Column(
              children: <Widget>[
                Image.asset("images/TechHand.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ITEssential())),
            child: Column(
              children: <Widget>[
                Image.asset("images/ITEss.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AuditControl())),
            child: Column(
              children: <Widget>[
                Image.asset("images/C&A.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
      ];

  List<Widget> GenB(BuildContext context) => <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Lies())),
            child: Column(
              children: <Widget>[
                Image.asset("images/Lie.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => KiteRunner())),
            child: Column(
              children: <Widget>[
                Image.asset("images/Kite.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Harry())),
            child: Column(
              children: <Widget>[
                Image.asset("images/Harry.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
      ];

  List<Widget> Rec(BuildContext context) => <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Traction())),
            child: Column(
              children: <Widget>[
                Image.asset("images/Traction.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ITManagement())),
            child: Column(
              children: <Widget>[
                Image.asset("images/ITM.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Midnight())),
            child: Column(
              children: <Widget>[
                Image.asset("images/MS.jpg", width: 200, height: 200),
              ],
            ),
          ),
        ),
      ];
}

class DataSearch extends SearchDelegate<String> {
  final books = [
    "Your Next Five Moves",
    "The Business Book",
    "Starting A Business",
    "The Tech Contract",
    "Information Technology Essentials",
    "Information Technology Control and Audit",
    "One of US is Lying",
    "The Kite Runner",
    "Harry Potter and the Cursed Child",
    "Traction",
    "Information Technology for Management",
    "Midnight Sun"
  ];

  final recentBooks = [
    "Traction",
    "Information Technology for Management",
    "Midnight Sun"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear, color: Color(0xFF275d9b)),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          color: Color(0xFF275d9b),
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final SuggestionList = query.isEmpty
        ? recentBooks
        : books.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {},
          leading: Icon(Icons.book, color: Color(0xFF275d9b)),
          title: RichText(
            text: TextSpan(
                text: SuggestionList[index].substring(0, query.length),
                style: TextStyle(
                    color: Color(0xFF275d9b), fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: SuggestionList[index].substring(query.length),
                    style: TextStyle(color: Color(0xFF275d9b)),
                  )
                ]),
          )),
      itemCount: SuggestionList.length,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}
