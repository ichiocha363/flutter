import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 2, 238, 33), 
      title: Text("Welome Bang Bang"),
      centerTitle: true,
      actions: [Text("1"),Text("2")],
      leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.,
        spacing: 50,
        children: [
        Text("Welome Bang Bang"),
        Text("Welome Bang Bang"),
        Text("Welome Bang Bang")
        ],
      )
    );
    
  }
}