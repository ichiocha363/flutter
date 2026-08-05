import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/extension/navigator.dart';
import 'package:flutter_belajar_1/Day_16/tugas_10/home_tugas10.dart';
import 'package:lottie/lottie.dart';

class Tugas10Day15 extends StatelessWidget {
  Tugas10Day15({super.key});
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nomorhpController = TextEditingController();
  final TextEditingController tambahanController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          "Formulir Pendaftaran Aplikasi",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(children: [Text("Nama Lengkap")]),
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  hintText: "Masukan Nama",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(children: [Text("Email")]),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Masukan Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email tidak boleh kosong";
                  } else if (!value.contains('@')) {
                    return "Email tidak valid";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(children: [Text("Nomor HP")]),
              TextFormField(
                controller: nomorhpController,
                decoration: InputDecoration(
                  hintText: "Masukan Nomor",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(children: [Text("Data Tambahan")]),
              TextFormField(
                controller: tambahanController,
                decoration: InputDecoration(
                  hintText: "Masukan Data Tambahan/Kota",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Data Tambahan tidak boleh kosong";
                  }
                  return null;
                },
                maxLines: 3,
              ),
              ElevatedButton(
                onPressed: () {
                  print(namaController.text);
                  print(emailController.text);
                  print(nomorhpController.text);
                  print(tambahanController.text);
                  if (_formKey.currentState!.validate()) {
                    context.push(
                      HomeTugas10(
                        nama: namaController.text,
                        Tambahan: tambahanController.text,
                      ),
                    );
                  } else {
                    print("Belum tervalidasi");
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Info"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Lottie.asset("assets/animation/error.json"),
                            Text("${emailController.text} tidak valid"),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: Text("Kembali"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text("tekan ini"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
