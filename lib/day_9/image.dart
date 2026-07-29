import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ImageDay10 extends StatefulWidget {
  const ImageDay10({super.key});

  @override
  State<ImageDay10> createState() => _ImageDay10();
}

class _ImageDay10 extends State<ImageDay10> {
  bool showImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Day 10"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Align(alignment: AlignmentGeometry.center),
          showImage
              ? Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPYJsfqZChB7U2WAXTjJT8osv_O4tpDrJYNKv3CI43Eg&s=10',
                  height: 400,
                )
              : Shimmer(
                  color: Colors.blue,
                  child: Image.asset('assets/image/bdul.jpeg', height: 400),
                ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                showImage = !showImage;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      showImage ? "Gambar Ditampilkan" : "Gambar disembunyikan",
                    ),
                  ),
                );
              });
            },
            child: Text(showImage ? "Sembunyikan" : "tempilkan"),
          ),
        ],
      ),
    );
  }
}
