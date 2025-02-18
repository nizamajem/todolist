import 'package:flutter/material.dart';
import 'package:week_1/pages/features/history_screen.dart';
import 'package:week_1/pages/features/task_screen.dart';
import '../widgets/profile_avatar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(
      child: Text(
        "Google Maps Placeholder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    TaskScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blue.shade900,
        actions: [
          ProfileAvatar(), // Tambahkan ikon profil di pojok kanan atas
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.blue.shade900,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: "Task",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
        ],
      ),
    );
  }
}
