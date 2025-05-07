import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/pages/home/home.dart';
import 'package:flutter_application_2v1/pages/message/message.dart';
import 'package:flutter_application_2v1/pages/profile/profile.dart';
import 'package:flutter_application_2v1/pages/schedule/schedule.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedPage = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _listPage = [
      Home(),
      Message(),
      Schedule(),
      Profile()
    ];
    return Scaffold(
      body: _listPage[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        onTap: navigateBottomBar,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Schedule'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
