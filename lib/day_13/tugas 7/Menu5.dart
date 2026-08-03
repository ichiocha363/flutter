import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Menu5Tugas7 extends StatefulWidget {
  const Menu5Tugas7({super.key});

  @override
  State<Menu5Tugas7> createState() => _Menu5Tugas7State();
}

class _Menu5Tugas7State extends State<Menu5Tugas7> {
  TimeOfDay? _selectedTimeOfDay;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: ElevatedButton(
            onPressed: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (picked != null) {
                setState(() {
                  _selectedTimeOfDay = picked;
                });
              }
            },
            child: Text("Pilih Waktu", style: TextStyle(fontSize: 20)),
          ),
        ),
        Text(
          _selectedTimeOfDay == null
              ? "anda belum pilih Jam"
              : "Pengingat diatur pukul : ${DateFormat('hh:mm a').format(DateTime(0, 0, 0, _selectedTimeOfDay!.hour, _selectedTimeOfDay!.minute))}",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
