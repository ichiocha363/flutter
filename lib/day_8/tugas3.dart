import 'package:flutter/material.dart';

class Tgs3Flutter extends StatelessWidget {
  const Tgs3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Registrasi & Edukasi"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(alignment: Alignment.center),
              Text(
                "Form Registrasi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Nama Pengguna",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email Pengguna",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Telephone Pengguna",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    hintText: "Input Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: "Konfirmasi Password",
                    hintText: "Masukan Konfirmasi Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
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
