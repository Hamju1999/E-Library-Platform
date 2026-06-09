import 'package:flutter/material.dart';
import 'package:skylibrary/Home.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';
import 'package:intl/intl.dart';

void main() => runApp(TableReservation());

class TableReservation extends StatefulWidget {
  String payload;
  TableReservation({
    @required this.payload,
  });
  @override
  _TableReservationState createState() {
    return _TableReservationState(0);
  }
}

class _TableReservationState extends State<TableReservation> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  int selectedPage;
  _TableReservationState(this.selectedPage);
  @override
  void initState() {
    super.initState();
    var initializationSettingsAndroid =
        AndroidInitializationSettings('flutter_devs');
    var initializationSettingsIOs = IOSInitializationSettings();
    var initSetttings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOs);

    flutterLocalNotificationsPlugin.initialize(initSetttings);
  }

  Future<void> cancelNotification() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  Future<void> showNotificationMediaStyle() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'media channel id',
      'media channel name',
      'media channel description',
      color: Colors.red,
      enableLights: true,
      largeIcon: DrawableResourceAndroidBitmap("flutter_devs"),
      styleInformation: MediaStyleInformation(),
    );
    var platformChannelSpecifics =
        NotificationDetails(androidPlatformChannelSpecifics, null);
    await flutterLocalNotificationsPlugin.show(
        0, 'notification title', 'notification body', platformChannelSpecifics);
  }

  // Reading Room

  Future<void> showNotification1() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 1 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification2() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 2 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification3() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 3 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification4() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 4 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification5() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 5 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification6() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 6 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification7() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 7 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification8() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Reading Room',
        'Table 8 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  // Discussion Room

  Future<void> showNotification11() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Discussion Room',
        'Table 1 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification22() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Discussion Room',
        'Table 2 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification33() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Discussion Room',
        'Table 3 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification44() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Discussion Room',
        'Table 4 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification55() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Discussion Room',
        'Table 5 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  Future<void> showNotification66() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(formattedDate);
    }
    ;
    var pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      print(pickedTime.format(context));
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      print(parsedTime);
      String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      print(formattedTime);
    }
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.High, importance: Importance.Max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android, iOS);
    await flutterLocalNotificationsPlugin.show(0, 'Discussion Room',
        'Table 6 is Reserved For You on $pickedDate at $pickedTime', platform);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new DefaultTabController(
          initialIndex: selectedPage,
          length: 2,
          child: new Scaffold(
            appBar: new AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home())),
              ),
              title: const Text('Table Reservation'),
              backgroundColor: Color(0xFF275d9b),
              bottom: new TabBar(isScrollable: true, tabs: [
                new Tab(
                  text: 'Reading Room',
                ),
                new Tab(
                  text: 'Discussion Room',
                ),
              ]),
            ),
            body: new TabBarView(
              children: [
                new ListView(
                  children: RB(context),
                ),
                new ListView(
                  children: DB(context),
                ),
              ],
            ),
          ),
        ));
  }

  List<Widget> RB(BuildContext context) => <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Click on A Table Below \n To Select Date & Time",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF275d9b),
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: showNotification1,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 1",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            FlatButton(
              onPressed: showNotification2,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 2",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: showNotification3,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 3",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            FlatButton(
              onPressed: showNotification4,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 4",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: showNotification5,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 5",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            FlatButton(
              onPressed: showNotification6,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 6",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: showNotification7,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 7",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            FlatButton(
              onPressed: showNotification8,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Read.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 8",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        SizedBox(
          height: 40,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: cancelNotification,
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              color: Color(0xFF275d9b),
              child: Text(
                'Cancel Reservation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        )),
        SizedBox(
          height: 40,
        ),
      ];

  List<Widget> DB(BuildContext context) => <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Click on A Table Below \n To Select Date & Time",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF275d9b),
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: showNotification11,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Discuss.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 1",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            FlatButton(
              onPressed: showNotification22,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Discuss.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 2",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: showNotification33,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Discuss.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 3",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            FlatButton(
              onPressed: showNotification44,
              child: Column(
                children: <Widget>[
                  Image.asset("images/Discuss.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Table 4",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: showNotification55,
                child: Column(
                  children: <Widget>[
                    Image.asset("images/Discuss.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Table 5",
                      style: TextStyle(
                        color: Color(0xFF275d9b),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              FlatButton(
                onPressed: showNotification66,
                child: Column(
                  children: <Widget>[
                    Image.asset("images/Discuss.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Table 6",
                      style: TextStyle(
                        color: Color(0xFF275d9b),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: cancelNotification,
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              color: Color(0xFF275d9b),
              child: Text(
                'Cancel Reservation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        )),
      ];
}
