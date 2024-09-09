import 'package:flutter/material.dart';
import 'package:sceleton_app/pages/home_page.dart';
import 'package:sceleton_app/pages/message_page.dart';
import 'package:sceleton_app/pages/notification_page.dart';
import 'package:sceleton_app/pages/search_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _activePage = 0;

  void bottomNavigationBar(int index) {
    setState(() {
      _activePage = index;
    });
  }

  final List _pages = [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_activePage],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: _activePage,
          onTap: bottomNavigationBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white),
                backgroundColor: Colors.black,
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add, color: Colors.white),
                label: 'NOTIFICATION'),
            BottomNavigationBarItem(
                icon: Icon(Icons.email, color: Colors.white), label: 'MESSAGE'),
          ]),
    );
  }
}
