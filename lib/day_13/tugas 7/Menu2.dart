import 'package:flutter/material.dart';

class Menu2Tugas7 extends StatefulWidget {
  const Menu2Tugas7({super.key});

  @override
  State<Menu2Tugas7> createState() => _Menu2Tugas7State();
}

class _Menu2Tugas7State extends State<Menu2Tugas7> {
  bool _nyala = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _nyala ? Colors.black : Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Switch(
              value: _nyala,
              onChanged: (value) {
                _nyala = value ?? false;
                setState(() {});
              },
            ),
          ),
          Text(_nyala ? "matiin" : "Hidupin"),
        ],
      ),
    );
  }
}
