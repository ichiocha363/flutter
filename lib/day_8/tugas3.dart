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
      backgroundColor: Colors.grey[150],

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(alignment: Alignment.center),
                      Text(
                        "Form Registrasi",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
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
              Divider(),
              Text(
                "Rekomendasi Tempat Wisata",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),

              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentGeometry.bottomCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/image/jakarta.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 100,
                        color: Colors.white,
                        child: Text("Jakarta", textAlign: TextAlign.center),
                      ),
                    ],
                  ),

                  Stack(
                    alignment: AlignmentGeometry.bottomCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/image/bandung.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 100,
                        color: Colors.white,
                        child: Text("Bandung", textAlign: TextAlign.center),
                      ),
                    ],
                  ),

                  Stack(
                    alignment: AlignmentGeometry.bottomCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/image/padang.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 100,
                        color: Colors.white,
                        child: Text("Padang", textAlign: TextAlign.center),
                      ),
                    ],
                  ),

                  Stack(
                    alignment: AlignmentGeometry.bottomCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/image/tokyo.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 100,
                        color: Colors.white,
                        child: Text("Tokyo", textAlign: TextAlign.center),
                      ),
                    ],
                  ),

                  Stack(
                    alignment: AlignmentGeometry.bottomCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/image/kyoto.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 100,
                        color: Colors.white,
                        child: Text("Kyoto", textAlign: TextAlign.center),
                      ),
                    ],
                  ),

                  Stack(
                    alignment: AlignmentGeometry.bottomCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/image/osaka.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 100,
                        color: Colors.white,
                        child: Text("Osaka", textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
