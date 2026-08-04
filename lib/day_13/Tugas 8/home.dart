import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/day_13/Tugas%208/tugas8.dart';
import 'package:flutter_belajar_1/day_13/tugas%207/Tugas7.dart';

class HomeTugas8 extends StatefulWidget {
  const HomeTugas8({super.key});

  @override
  State<HomeTugas8> createState() => _HomeTugas8State();
}

class _HomeTugas8State extends State<HomeTugas8> {
  int _currentIndex = 0;
  void changeBottom(int index) {
    _currentIndex = index;
    print("ini adalah value dari $_currentIndex");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [Tugas7Day13(), Tugas8Day13()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Tentang"),
        ],
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}
