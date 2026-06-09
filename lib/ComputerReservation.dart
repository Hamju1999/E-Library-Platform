import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:skylibrary/Home.dart';
import 'package:intl/intl.dart';

void main() => runApp(ComputerReservation());

class ComputerReservation extends StatefulWidget {
  String payload;
  ComputerReservation({
    @required this.payload,
  });
  @override
  _ComputerReservationState createState() => _ComputerReservationState(0);
}

class _ComputerReservationState extends State<ComputerReservation> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  int selectedPage;
  _ComputerReservationState(this.selectedPage);
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

  // Computers

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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 1 is Reserved For You on $pickedDate at $pickedTime',
        platform);
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 2 is Reserved For You on $pickedDate at $pickedTime',
        platform);
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 3 is Reserved For You on $pickedDate at $pickedTime',
        platform);
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 4 is Reserved For You on $pickedDate at $pickedTime',
        platform);
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 5 is Reserved For You on $pickedDate at $pickedTime',
        platform);
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 6 is Reserved For You on $pickedDate at $pickedTime',
        platform);
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 7 is Reserved For You on $pickedDate at $pickedTime',
        platform);
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 8 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

  Future<void> showNotification9() async {
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 9 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

  Future<void> showNotification10() async {
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 10 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 11 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

  Future<void> showNotification12() async {
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 12 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

  Future<void> showNotification13() async {
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'Computer',
        'Computer 13 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

  // E-Library

  Future<void> showNotification14() async {
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'E-Library',
        'Computer 1 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

  Future<void> showNotification15() async {
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
    await flutterLocalNotificationsPlugin.show(
        0,
        'E-Library',
        'Computer 2 is Reserved For You on $pickedDate at $pickedTime',
        platform);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
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
              title: const Text('Computer Reservation'),
              backgroundColor: Color(0xFF275d9b),
              bottom: new TabBar(isScrollable: true, tabs: [
                new Tab(
                  text: 'Computers',
                ),
                new Tab(
                  text: 'E-Library',
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
        SingleChildScrollView(
            child: Column(children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Click on A Computer Below \n To Select Date & Time",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 1",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 2",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 3",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 4",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 5",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 6",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 7",
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
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 8",
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
                onPressed: showNotification9,
                child: Column(
                  children: <Widget>[
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 9",
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
                onPressed: showNotification10,
                child: Column(
                  children: <Widget>[
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 10",
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
                onPressed: showNotification11,
                child: Column(
                  children: <Widget>[
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 11",
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
                onPressed: showNotification12,
                child: Column(
                  children: <Widget>[
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 12",
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
                onPressed: showNotification13,
                child: Column(
                  children: <Widget>[
                    Image.asset("images/Comp.jpg", width: 70, height: 70),
                    SizedBox(height: 10),
                    Text(
                      "Computer 13",
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
            height: 20,
          ),
        ]))
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
                "Click on A Computer Below \n To Select Date & Time",
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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: showNotification14,
              child: Column(
                children: <Widget>[
                  Image.asset("images/E-Lib.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Computer 1",
                    style: TextStyle(
                      color: Color(0xFF275d9b),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              onPressed: showNotification15,
              child: Column(
                children: <Widget>[
                  Image.asset("images/E-Lib.jpg", width: 70, height: 70),
                  SizedBox(height: 10),
                  Text(
                    "Computer 2",
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
      ];
}
