import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/home.dart';

class RoutingDay11 extends StatelessWidget {
  const RoutingDay11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing Day 11"),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          tombolPush(context),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text("PushNamed"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeRoutingDay11()),
                );
              },
              child: Text("PushReplacement"),
            ),
          ),
        ],
      ),
    );
  }

  Center tombolPush(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeRoutingDay11()),
          );
        },
        child: Text("push"),
      ),
    );
  }
}
