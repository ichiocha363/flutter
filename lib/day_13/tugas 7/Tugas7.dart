import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/extension/navigator.dart';
import 'package:flutter_belajar_1/day_13/tugas%207/Menu1.dart';
import 'package:flutter_belajar_1/day_13/tugas%207/Menu2.dart';
import 'package:flutter_belajar_1/day_13/tugas%207/Menu3.dart';
import 'package:flutter_belajar_1/day_13/tugas%207/Menu4.dart';
import 'package:flutter_belajar_1/day_13/tugas%207/Menu5.dart';
import 'package:flutter_belajar_1/day_13/tugas%207/home.dart';

class Tugas7Day13 extends StatefulWidget {
  const Tugas7Day13({super.key});

  @override
  State<Tugas7Day13> createState() => _Tugas7Day13State();
}

class _Tugas7Day13State extends State<Tugas7Day13> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("ini adalah value dari $_selectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetMenu = [
    HomeTugas7(),
    Menu1Tugas7(),
    Menu2Tugas7(),
    Menu3Tugas7(),
    Menu4Tugas7(),
    Menu5Tugas7(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Input Interaktif",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan),
              child: Text("Menu / Komponen"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_outlined),
              title: Text("Syarat & Ketentuan"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.format_color_reset),
              title: Text("Mode Tampilam"),
              onTap: () {
                changeBottom(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket_outlined),
              title: Text("Kategori Produk"),
              onTap: () {
                changeBottom(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Tanggal"),
              onTap: () {
                changeBottom(4);
              },
            ),
            ListTile(
              leading: Icon(Icons.timer_outlined),
              title: Text("Atur Pengingat"),
              onTap: () {
                changeBottom(5);
              },
            ),
          ],
        ),
      ),
      body: _widgetMenu.elementAt(_selectedBottom),
    );
  }
}
