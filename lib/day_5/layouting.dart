import 'package:flutter/material.dart';

class LayoutingDay5 extends StatelessWidget {
  const LayoutingDay5({super.key});

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.,
        spacing: 20,
        children: [
        Text("Welome Bang Bang" ),
        Text("Welome Bang Bang"),
        Icon(Icons.star),
        Text("Welome Bang Bang"),
        Text("Welome Bang Bang"),
        Row(children: [Icon(Icons.star), Text("hallo")]),
        ],
      )
    );
    
  }
}