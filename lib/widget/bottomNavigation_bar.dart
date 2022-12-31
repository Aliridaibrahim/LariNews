import 'package:flutter/material.dart';
import 'package:larinew/Screens/alert.dart';
import 'package:larinew/Screens/weather.dart';
import '../Screens/rainfall.dart';
import '../Screens/News.dart';

class BottomNavidationBar extends StatefulWidget {
  const BottomNavidationBar({Key key}) : super(key: key);

  @override
  State<BottomNavidationBar> createState() => _BottomNavidationBarState();
}

class _BottomNavidationBarState extends State<BottomNavidationBar> {
  int currentIndex = 3;
  final screens = [
    const Raiinfall(),
    const Weather(),
    const Alerts(),
    const News()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'مجموع الامطار',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الاحوال الجوية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الانذار المبكر',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الاخبار',
          ),
        ],
      ),
    );
  }
}
