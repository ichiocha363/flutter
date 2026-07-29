import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  // int counter = 0;
  bool katakata = false;
  bool love = false;
  bool deskripsi = false;
  bool sentuh = false;
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Lab Interaksi Flutter",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Text("ini ElevatedButton", style: TextStyle(fontSize: 20)),
            // SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    katakata = !katakata;
                  });
                },
                child: Text('Klik Saya!'),
              ),
            ),
            SizedBox(height: 16),
            if (katakata) const Text("hallo teman teman"),

            SizedBox(height: 20),
            Text("ini tentang iconbutton", style: TextStyle(fontSize: 20)),
            IconButton(
              icon: Icon(
                Icons.favorite,
                size: 100,
                color: love ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  love = !love;
                });
              },
            ),
            if (love)
              const Text(
                "Disukai",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            else
              const Text(
                "Belum Disukai",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

            SizedBox(height: 20),
            Text("ini tentang TextButton", style: TextStyle(fontSize: 20)),
            TextButton(
              onPressed: () {
                setState(() {
                  deskripsi = !deskripsi;
                });
              },
              child: Text(
                "Lihat Deskripsi",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
            if (deskripsi)
              const Text(
                "Saya zhilly hilmansyah peserta ppkd jakarta pusat hari ini saya lagi belajar button dalam flutter",
                textAlign: TextAlign.center,
              ),

            SizedBox(height: 20),
            Text("ini tentang Inkwell", style: TextStyle(fontSize: 20)),
            InkWell(
              onTap: () {
                print("Tombol Ditekan");
                setState(() {
                  sentuh = true;
                });
              },
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Sentuh Kotak Ini",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            if (sentuh) const Text("Sentuhan terdeteksi!"),

            SizedBox(height: 20),
            Text("ini tentang GestureDetector", style: TextStyle(fontSize: 20)),
            GestureDetector(
              onTap: () {
                setState(() {
                  angka++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  angka += 2; // Memperbarui nilai state
                });
              },
              onLongPress: () {
                setState(() {
                  angka += 3; // Memperbarui nilai state
                });
              },
              child: Container(
                width: 200,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Angka: $angka",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),

            Text("Tap = +1"),
            Text("Double Tap = +2"),
            Text("Long Press = +3"),
          ],
        ),
      ),
    );
  }
}
