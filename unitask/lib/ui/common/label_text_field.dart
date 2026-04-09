import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData icon;

  const LabelTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Text(label, style: const TextStyle(fontWeight: .bold)),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
