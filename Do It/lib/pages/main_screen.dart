import 'package:flutter/material.dart';
import 'package:week_9/pages/goals_screen.dart';
import 'package:week_9/pages/reminders_screen.dart';
import 'package:week_9/pages/tasks_screen.dart';
import 'package:week_9/pages/profile_screen.dart';

class sec extends StatefulWidget {
  @override
  _secState createState() => _secState();
}

class _secState extends State<sec> {
  List pages = [
    const GoalsPage(),
    const TasksPage(),
    const RemindersPage(),
    const ProfilePage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

//Navigation bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        elevation: 0,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Goals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remember_me),
            label: 'Reminder ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
