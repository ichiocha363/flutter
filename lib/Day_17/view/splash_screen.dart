import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/extension/navigator.dart';
import 'package:flutter_belajar_1/Day_17/service/preference_handler.dart';
import 'package:flutter_belajar_1/Day_18/view/LoginDay18.dart';
import 'package:flutter_belajar_1/day_13/drawer.dart';

class SplashScreenTugas11 extends StatefulWidget {
  const SplashScreenTugas11({super.key});

  @override
  State<SplashScreenTugas11> createState() => _SplashScreenTugas11State();
}

class _SplashScreenTugas11State extends State<SplashScreenTugas11> {
  @override
  void initState() {
    super.initState();
    goTologin();
  }

  void goTologin() async {
    await Future.delayed(Duration(seconds: 5));
    if (PreferenceHandler.isLogin == true) {
      context.push(const DrawerDay13());
    } else {
      context.push(const LoginDay18SQFLITE());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/screen.JPG'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
