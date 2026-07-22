import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  const Tugas2Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Detail Aplikasi"),
        centerTitle: true
      ),

      body: Column(
        children: [
          Align(alignment: AlignmentGeometry.center),
          Text("Tride",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),
          ),
        ]
      ) ,
    );
  }
}