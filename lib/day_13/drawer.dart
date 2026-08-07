import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/extension/navigator.dart';
import 'package:flutter_belajar_1/Day_15/list.dart';
import 'package:flutter_belajar_1/Day_15/list_of_map.dart';
import 'package:flutter_belajar_1/Day_15/model/list_model.dart';
import 'package:flutter_belajar_1/Day_16/text_form_field.dart';
import 'package:flutter_belajar_1/Day_17/view/logout.dart';
import 'package:flutter_belajar_1/day_13/input_widget/checkbox.dart';
// import 'package:flutter_belajar_1/extension/navigator.dart';

class DrawerDay13 extends StatefulWidget {
  const DrawerDay13({super.key});

  @override
  State<DrawerDay13> createState() => _DrawerDay13State();
}

class _DrawerDay13State extends State<DrawerDay13> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("ini adalah value dari $_selectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    Center(child: Text("Home")),
    Center(child: Text("School")),
    Center(child: Text("Business")),
    inputwidgetDay13(),
    ListDataDay15(),
    ListOfMapDay15(),
    ListOfModelDay15(),
    TextformfieldDay16(),
    Logouttugas11Day17(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text("Shcool"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text("Business"),
              onTap: () {
                changeBottom(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text("Input Widget"),
              onTap: () {
                changeBottom(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text("Input Widget"),
              onTap: () {
                changeBottom(4);
              },
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text("Input Widget"),
              onTap: () {
                changeBottom(5);
              },
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text("Input Widget"),
              onTap: () {
                changeBottom(6);
              },
            ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text("Input Widget"),
              onTap: () {
                changeBottom(7);
              },
            ),
            ListTile(
              leading: Icon(Icons.leave_bags_at_home),
              title: Text("LogOut"),
              onTap: () {
                changeBottom(8);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
