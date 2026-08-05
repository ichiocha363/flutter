import 'package:flutter/material.dart';

class ListOfModelTugas9 extends StatelessWidget {
  ListOfModelTugas9({super.key});

  List<Map<String, dynamic>> dataProduk = [
    {'nama': 'Buah-buah', 'icon': Icons.apple},
    {'nama': 'sayuran', 'icon': Icons.grass},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 2,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(dataProduk[index]["icon"]),
            title: Text(dataProduk[index]["nama"]),
          );
        },
      ),
    );
  }
}
