import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    const HomeScreen(),
    const Center(child: Text('Tickets')),
    const Center(child: Text('Search')),
    const Center(child: Text('Profile')),
  ];

  //change our index for bottom navBar

  int _selectedIndex =0;

  void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text ("My Tickets")),
      ),
      body: appScreens [_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), label: "Tickets"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_add_regular), label: "Profile"),

        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
