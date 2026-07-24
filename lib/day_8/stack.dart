import 'package:flutter/material.dart';

class StackDay8 extends StatelessWidget {
  const StackDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("belajar Stack Day8"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 11, 7),
                height: 400,
                width: 400,
              ),
              Container(color: Colors.amber, height: 300, width: 300),
              Container(
                color: const Color.fromARGB(255, 7, 255, 69),
                height: 200,
                width: 200,
              ),
            ],
          ),

          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 11, 7),
                height: 400,
                width: 400,
              ),
              Container(color: Colors.amber, height: 300, width: 300),
              Container(
                color: const Color.fromARGB(255, 7, 255, 69),
                height: 200,
                width: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
