import 'package:flutter/material.dart';

class Tugas8Day13 extends StatefulWidget {
  const Tugas8Day13({super.key});

  @override
  State<Tugas8Day13> createState() => _Tugas8Day13State();
}

class _Tugas8Day13State extends State<Tugas8Day13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            heightFactor: 1.5,
            child: Column(
              children: [
                Text(
                  "Navigasi Drawer",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("Versi 1.0.0"),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.8),
                  child: Text(
                    "Aplikasi ini dirancang untuk memudahkan pengguna dalam mengelola tugas harian dengan antarmuka yang intuitif dan fitur yang lengkap.",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person_sharp),
                  title: Text("DIBUAT OLEH"),
                  subtitle: Text("zHILLY HILMANSYAH"),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.mail, color: Colors.red),
                  title: Text("Hubungi Kami"),
                  subtitle: Text("support@gmail.com"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
