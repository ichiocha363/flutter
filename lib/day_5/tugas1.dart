import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Profil Saya"),
        centerTitle: true, 
      ),
      body: Column(
        children: [
          Align(alignment: AlignmentGeometry.center),
          Text("Zhilly Hilmansyah",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
            ), 
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.location_on),
              Text("Bekasi")
              ]
            ),
          Text("mahasiwa aktif serta peserta ppkd jakarta pusat batch3 2026",
          style: TextStyle(
            fontSize: 15,
            color: CupertinoColors.inactiveGray
          ),
          )
        ],
      ),

    );
  }
}