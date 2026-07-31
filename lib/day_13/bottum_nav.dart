import 'package:flutter/material.dart';

class ButtomNavDay13 extends StatefulWidget {
  const ButtomNavDay13({super.key});

  @override
  State<ButtomNavDay13> createState() => _ButtomNavDay13State();
}

class _ButtomNavDay13State extends State<ButtomNavDay13> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [
    Center(child: Text("Home")),
    Center(child: Text("School")),
    Center(child: Text("Business")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
