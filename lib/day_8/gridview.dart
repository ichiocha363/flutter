import 'package:flutter/material.dart';

class GridviewDay8 extends StatelessWidget {
  const GridviewDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview day 8"),
        backgroundColor: Colors.green,
      ),

      body:
          // GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //   ),
          //   itemCount: 54,
          //   itemBuilder: (BuildContext context, int index) {
          //     return;
          //   },
          // ),
          // GridView.count(
          //   crossAxisSpacing: 1,
          //   mainAxisSpacing: 1,
          //   crossAxisCount: 8,
          //   children: <Widget>[
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //     Container(color: Colors.black, height: 10, width: 10),
          //     Container(color: Colors.white, height: 10, width: 10),
          //   ],
          // ),
          GridView.builder(
            // gridDelegate mengatur tata letak (layout) grid
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Menentukan jumlah kolom pada grid (3 kolom)
              mainAxisSpacing:
                  4, // Jarak baris antar item (vertikal) sebesar 4 piksel
              crossAxisSpacing:
                  4, // Jarak kolom antar item (horizontal) sebesar 4 piksel
              childAspectRatio:
                  1 /
                  2, // Rasio lebar dibanding tinggi item (lebar : tinggi = 1 : 2)
            ),
            itemCount: 1000, // Total item yang akan di-generate
            // itemBuilder dipanggil untuk merender widget berdasarkan indeksnya
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape
                      .circle, // Membuat bentuk container menjadi lingkaran
                ),
                child: Text("$index", style: TextStyle(fontSize: 30)),
              );
            },
          ),
    );
  }
}
