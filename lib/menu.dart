import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MenuBar extends StatefulWidget {
  Function updateSelectedIndex;
  _MenuWidgetState parentState;

  MenuBar(this.updateSelectedIndex);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      this.widget.updateSelectedIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          title: Text('Inzeráty'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text('Vložit inzerát'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profil'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_laundry_service),
          title: Text('Služby extra'),
        ),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Oznámení'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}