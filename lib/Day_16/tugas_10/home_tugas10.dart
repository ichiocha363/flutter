import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeTugas10 extends StatelessWidget {
  const HomeTugas10({super.key, required this.nama, required this.Tambahan});
  final String nama;
  final String Tambahan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Align(alignment: AlignmentGeometry.center),
            Lottie.asset('assets/animation/Hello.json'),
            Text(
              "Terima kasih, $nama dari $Tambahan telah mendaftar.",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
