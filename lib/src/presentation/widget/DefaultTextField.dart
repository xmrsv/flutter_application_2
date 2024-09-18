import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
 final String label;
 final String? errorText;
 TextInputType ? textInputType;
 Color ? color;
 final IconData icon;
 final bool obscureText;
 final Function(String text) onChanged;
 final String? Function (String?)? validator;


  DefaultTextField({
    required this.label,
    this.errorText,
    this.textInputType,
    this.validator,
    required this.icon,
    this.color = Colors.white,
    required this.onChanged,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: (text){
        onChanged(text);
      },
      keyboardType: textInputType,
      validator: validator,
      decoration: InputDecoration(
          label: Text(label, style: TextStyle(color: color)
          ),
           errorText : errorText,
          prefixIcon: Icon(
            icon,
            color: color,
          ),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color!)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: color!))),
    );
  }
}