import 'package:flutter/material.dart';

class ContohStatefull extends StatefulWidget {
  const ContohStatefull({super.key});

  @override
  State<ContohStatefull> createState() => _ContohStatefullState();
}

class _ContohStatefullState extends State<ContohStatefull> {
  int counter = 0;

  bool showImage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(alignment: AlignmentGeometry.center),
          SizedBox(height: 20),
          Text("Nilai: $counter"),
          ElevatedButton(
            onPressed: () {
              // Langkah 6: Tambahkan setState di dalam fungsi aksi
              setState(() {
                counter++; // Memperbarui nilai state
              });
            },
            child: Text("klik saya"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                showImage = !showImage;
              });
            },
            child: Text(showImage ? "Sembunyikan Gambar" : "Lihat Gambar"),
          ),
          if (showImage)
            Image.asset('assets/image/bdul.jpeg', width: 400, height: 400),

          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border, size: 30),
                onPressed: () {
                  debugPrint("Ikon Diklik");
                },
              ),
              IconButton(
                icon: Icon(Icons.comment, size: 30),
                onPressed: () {
                  debugPrint("Ikon Diklik");
                },
              ),
              IconButton(
                icon: Icon(Icons.share, size: 30),
                onPressed: () {
                  debugPrint("Ikon Diklik");
                },
              ),
            ],
          ),
          Row(children: [Text("Dilfadil22 :aku ganteng gais")]),
          ElevatedButton(
            onPressed: () {
              debugPrint("Tombol Ditekan");
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("kotak disentuh")));
            },
            child: const Text("klik saja"),
          ),

          TextButton(
            onPressed: () {
              debugPrint("Tombol teks ditekan");
            },
            child: Text("Batal"),
          ),

          InkWell(
            onTap: () {
              debugPrint("Gambar diklik");
            },
            child: Text("contoh"),
          ),
          GestureDetector(
            onTap: () {
              debugPrint("Disentuh sekali");
            },
            onDoubleTap: () {
              debugPrint("Disentuh Dua Kali");
            },
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(16),
              child: Text("Tekan saya", style: TextStyle(color: Colors.amber)),
            ),
          ),

          FloatingActionButton(
            onPressed: () {
              debugPrint("FAB ditekan");
            },
            tooltip: "Tambahb Data",
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
