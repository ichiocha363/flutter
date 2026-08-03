import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Menu4Tugas7 extends StatefulWidget {
  const Menu4Tugas7({super.key});

  @override
  State<Menu4Tugas7> createState() => _Menu4Tugas7State();
}

class _Menu4Tugas7State extends State<Menu4Tugas7> {
  DateTime? _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: ElevatedButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                firstDate: DateTime(2008),
                lastDate: DateTime.now(),
                // initialDate: DateTime.now(),
              );
              if (picked != null) {
                setState(() {
                  _selectedTime = picked;
                });
              }
            },
            child: Text(
              "Pilih Tanggal",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : "Tanggal lahir: ${DateFormat('dd MMMM yyyy', 'id_ID').format(_selectedTime ?? DateTime.now())}",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
