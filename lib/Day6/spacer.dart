import 'package:flutter/material.dart';

class SpacerDay6 extends StatelessWidget {
  const SpacerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded day 6"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                // flex: 2,
                child: Container(height: 200, color: Colors.red),
              ),
              Spacer(),
              Expanded(child: Container(height: 200, color: Colors.yellow)),
              Spacer(),
              Expanded(child: Container(height: 200, color: Colors.green)),
            ],
          ),
          Text("Halloooooooooooo"),
          SizedBox(height: 10),
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.yellow)),
          Expanded(child: Container(color: Colors.green)),
        ],
      ),
    );
  }
}