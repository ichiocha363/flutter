import 'package:flutter/material.dart';

class ContainerDay6 extends StatelessWidget {
  const ContainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container dc cakung"),
        backgroundColor: Colors.amber,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.red,
              padding: const EdgeInsets.only(left: 170, top: 30),
              child: Text("coba"),
            ),
          ),

          Container(
            height: 100,
            width: 350,
            color: Colors.blue,
            // padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text("nama saya zhilly"),
                Text("hobi saya ngoding"),
                Text("damn bekasi"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            height: 100,
            width: 350,
            color: const Color.fromARGB(255, 33, 243, 61),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text("nama saya zhilly"),
                Text("hobi saya ngoding"),
                Text("damn bekasi"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            height: 100,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.green,
              // backgroundBlendMode: BlendMode.color,
              border: Border.all(
                color: Colors.black,
                width: 2,
                strokeAlign: 10,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text("nama saya zhilly"),
                Text("hobi saya ngoding"),
                // Text("damn bekasi"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 30),
            height: 100,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.green,
              // backgroundBlendMode: BlendMode.color,
              border: Border.all(
                color: Colors.black,
                width: 2,
                strokeAlign: 10,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),

              boxShadow: [
                BoxShadow(color: Colors.black, offset: Offset(10, 20)),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text("nama saya zhilly"),
                Text("hobi saya ngoding"),
                Text("damn bekasi"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
