import 'package:flutter/material.dart';
import 'package:the_game/detailPages/contactOffer.dart';
import 'package:the_game/menuPages/nofifications.dart';
import 'package:the_game/menuPages/offers.dart';
import 'package:the_game/menuPages/newOffer.dart';
import 'package:the_game/menuPages/profile.dart';
import 'package:the_game/menu.dart';
import 'package:the_game/messages.dart';
import 'package:the_game/settings.dart';

import 'detailPages/offerDetail.dart';
import 'listPages/serviceList.dart';
import 'menuPages/services.dart';

void main() => runApp(TheGameApp());

class TheGameApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spolubydlo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MainWidget(),
      initialRoute: '/',
      routes: {
        '/offer/detail': (context) => OfferDetailPage(),
        '/service/cleaning': (context) => ServiceListPage("Úklid"),
        '/service/moving': (context) => ServiceListPage("Stěhování"),
        '/service/reconstruction': (context) => ServiceListPage("Rekonstrukce"),
        '/settings': (context) => SettingsPage(),
        '/messages': (context) => MessagesPage(),
        '/contact': (context) => ContactOfferPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key}) : super(key: key);

   @override
   _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectedIndex;
  Widget menuBar;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    OffersPage(),
    MyNewOfferPage(),
    ProfilePage(),
    ServicesPage(),
    NotificationPage()
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
    menuBar = MenuBar(this.updateSelectedIndex);
  }


  void updateSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Spolubydlo'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/messages');
                },
                child: Container(
                  child: Icon(
                    Icons.message,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: menuBar,
    );
  }
}
