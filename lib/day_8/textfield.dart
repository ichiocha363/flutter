import 'package:flutter/material.dart';

class TextfieldDay8 extends StatelessWidget {
  const TextfieldDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield day 8"),
        backgroundColor: Colors.amber,
      ),

      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "masukan pw",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          TextField(),
          TextField(),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
