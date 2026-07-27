import 'package:flutter/material.dart';

class FlutterWidget4 extends StatefulWidget {
  const FlutterWidget4({super.key});

  @override
  State<FlutterWidget4> createState() => _FlutterWidget4State();
}

class _FlutterWidget4State extends State<FlutterWidget4> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Langkah 3: Tampilkan variabel state di widget
        Text("Nilai: $counter"),
        ElevatedButton(
          onPressed: () {
            // Langkah 6: Tambahkan setState di dalam fungsi aksi
            setState(() {
              counter++; // Memperbarui nilai state
            });
          },
          child: Text("Tambah"),
        ),
      ],
    );
  }
}
