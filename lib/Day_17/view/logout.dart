import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/extension/navigator.dart';
import 'package:flutter_belajar_1/Day_17/service/preference_handler.dart';
import 'package:flutter_belajar_1/Day_17/view/logintugas11.dart';

class Logouttugas11Day17 extends StatefulWidget {
  const Logouttugas11Day17({super.key});

  @override
  State<Logouttugas11Day17> createState() => _Logouttugas11Day17State();
}

class _Logouttugas11Day17State extends State<Logouttugas11Day17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            heightFactor: 15,
            child: ElevatedButton(
              onPressed: () {
                PreferenceHandler.logOut();
                context.pushAndRemoveAll(const HalamanLoginTugas11());
              },
              child: Text("LogOut"),
            ),
          ),
        ],
      ),
    );
  }
}
