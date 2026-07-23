import 'package:flutter/material.dart';

class ImageContainerDay6 extends StatelessWidget {
  const ImageContainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image container day 6 "),
        backgroundColor: Colors.blue,
      ),

      body: Column(children: [
        Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/bdul.jpeg'),
          ),
        )
        )
      ],
        
      ),
    );
  }
}