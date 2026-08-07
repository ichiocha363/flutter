import 'package:flutter/material.dart';
import 'package:flutter_belajar_1/Day_11/extension/navigator.dart';
import 'package:flutter_belajar_1/Day_16/Home_abal_abal.dart';
import 'package:lottie/lottie.dart';

class TextformfieldDay16 extends StatefulWidget {
  const TextformfieldDay16({super.key});

  @override
  State<TextformfieldDay16> createState() => _TextformfieldDay16State();
}

class _TextformfieldDay16State extends State<TextformfieldDay16> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              controller: emailController,
              onChanged: (value) {
                setState(() {});
              },
            ),
            TextField(controller: passwordController),
            TextField(controller: confirmPasswordController),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email tidak boleh kosong";
                } else if (!value.contains('@')) {
                  return "Email tidak valid";
                }
                return null;
              },
            ),
            TextFormField(
              controller: passwordController,
              validator: (value) {
                return null;
              },
            ),
            TextFormField(
              controller: confirmPasswordController,
              validator: (value) {
                return null;
              },
            ),
            Text(emailController.text, style: TextStyle(color: Colors.red)),
            ElevatedButton(
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
                print(confirmPasswordController.text);
                if (_formKey.currentState!.validate()) {
                  context.push(
                    HomeAbalAbalDay16(
                      email: emailController.text,
                      password: passwordController.text,
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
                          child: Text("Baiklah"),
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
    );
  }
}
