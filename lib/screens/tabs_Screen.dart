import 'package:flutter/material.dart';

import '../screens/services/myConsult_screen.dart';
import '../screens/accueil_screen.dart';
import '../screens/msg_screen.dart';
import '../widgets/main_drawer.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': AccueilScreen(),
        'title': 'Services',
      },
      {
        'page': MsgScreen(),
        'title': 'Messages',
      },
      {
        'page': MyConsultScreen(),
        'title': 'Mes consultations',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withOpacity(0.4),
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: 'Services',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.sms,
              ),
              label: 'Messages'),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.notesMedical,
            ),
            label: 'Mes consultations',
          ),
        ],
      ),
    );
  }
}
