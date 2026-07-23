import 'package:flutter/material.dart';

class ExpandedDay6 extends StatelessWidget {
  const ExpandedDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Expanded"),
        backgroundColor: Colors.amber,
      ),

      body: 
      Column(
        children: [
      Row(
            children: [
              Expanded(child: Container(color: Colors.red,)),
              Expanded(child: Container(color: Colors.yellow,)),
              Expanded(child: Container(color: Colors.blue,)),
            ],
          ),
          Expanded(flex: 2, child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.yellow,)),
          Expanded(child: Container(color: Colors.blue,))
        ],
      ),
    );
  }
}