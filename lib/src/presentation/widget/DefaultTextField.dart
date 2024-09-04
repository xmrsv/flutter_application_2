import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  String label;
  IconData icon;
  bool obscureText;

  Function(String text) onChange;

  DefaultTextField(
      {super.key,
      required this.label,
      required this.icon,
      required this.onChange,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: (text) {
        onChange(text);
      },
      decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white))),
    );
  }
}
