import 'package:flutter/material.dart';

class TugasListSederhana extends StatelessWidget {
  TugasListSederhana({super.key});

  List<String> barangbekas = [
    "kardus bekas",
    "botol plastik",
    "kaleng minuman",
    "kertas bekas",
    "buku rusak",
    "pakaian bekas",
    "karet ban",
    "kayu palet",
    "gelas pecah",
    "mainan rusak",
    "koran lama",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: barangbekas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(barangbekas[index]));
        },
      ),
    );
  }
}
