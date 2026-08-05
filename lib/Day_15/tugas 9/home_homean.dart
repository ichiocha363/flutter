import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/extension/navigator.dart';
import 'package:flutter_belajar_1/Day_15/tugas%209/list_of_map.dart';
import 'package:flutter_belajar_1/Day_15/tugas%209/list_sederhana.dart';
import 'package:flutter_belajar_1/Day_15/tugas%209/model_barangbekas.dart';

class HomeListTugas9 extends StatefulWidget {
  const HomeListTugas9({super.key});

  @override
  State<HomeListTugas9> createState() => _HomeListTugas9State();
}

class _HomeListTugas9State extends State<HomeListTugas9> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("ini adalah value dari $_selectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    TugasListSederhana(),
    ListOfModelTugas9(),
    ListModeltugas9(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tugas 9",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("List"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Lost Of Map"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Lost Of Map model"),
              onTap: () {
                changeBottom(2);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
