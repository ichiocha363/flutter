import 'package:flutter/material.dart';

class Tugas6Day11 extends StatelessWidget {
  const Tugas6Day11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 450,
                width: 450,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(37, 103, 232, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("Sign in to your")],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 190, top: 70),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(37, 103, 232, 1),
                  image: DecorationImage(
                    image: AssetImage('assets/image/Vector.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
