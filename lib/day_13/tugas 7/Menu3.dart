import 'package:flutter/material.dart';

class Menu3Tugas7 extends StatefulWidget {
  const Menu3Tugas7({super.key});

  @override
  State<Menu3Tugas7> createState() => _Menu3Tugas7State();
}

class _Menu3Tugas7State extends State<Menu3Tugas7> {
  String? _pilihan;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(),
        DropdownButton(
          value: _pilihan,
          items: ["Elektronik", "Pakaian", "Makanan"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _pilihan = value;
            });
          },
        ),
        Text(_pilihan.toString()),
      ],
    );
  }
}
