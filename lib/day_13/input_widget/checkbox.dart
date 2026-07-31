import 'package:flutter/material.dart';

class inputwidgetDay13 extends StatefulWidget {
  const inputwidgetDay13({super.key});

  @override
  State<inputwidgetDay13> createState() => _inputwidgetDay13State();
}

class _inputwidgetDay13State extends State<inputwidgetDay13> {
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            _isCheck = value ?? false;
          },
        ),
        // Text(_isCheck)
      ],
    );
  }
}
