import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/day_13/bottum_nav.dart';
import 'package:flutter_belajar_1/day_13/drawer.dart';

class HalamanLoginDay13 extends StatefulWidget {
  const HalamanLoginDay13({super.key});

  @override
  State<HalamanLoginDay13> createState() => belajarHalamanLoginDay13();
}

bool mata = false;
bool _isCheck = false;

class belajarHalamanLoginDay13 extends State<HalamanLoginDay13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 900,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(37, 103, 232, 1),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 68),
                    Center(
                      child: Image(
                        image: AssetImage('assets/image/Vector.png'),
                        width: 30,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Sign in to your",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Enter your email and password to log in",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 257,
                left: 30,
                child: Container(
                  padding: EdgeInsetsGeometry.all(25),
                  // height: 470,
                  width: 327,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.black)],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/image/google.png',
                                  // alignment: AlignmentGeometry.center,
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DrawerDay13(),
                                      ),
                                    );
                                  },
                                  child: Text("Continue with Google"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.grey.shade100)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Or login with"),
                          ),
                          Expanded(child: Divider(color: Colors.grey.shade100)),
                        ],
                      ),
                      SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukan Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: mata,
                        autofocus: true,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                mata = !mata;
                              });
                            },
                            icon: Icon(
                              mata ? Icons.visibility_off : Icons.visibility,
                            ),
                          ),
                          labelText: "Konfirmasi Password",
                          hintText: "Masukan Konfirmasi Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _isCheck,
                                onChanged: (value) {
                                  setState(() {
                                    _isCheck = value ?? false;
                                  });
                                },
                              ),
                              Text(
                                _isCheck
                                    ? "Sudah di ceklis"
                                    : "Belum di ceklis",
                              ),
                            ],
                          ),

                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgor Passwrd",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ButtomNavDay13(),
                              ),
                            );
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
