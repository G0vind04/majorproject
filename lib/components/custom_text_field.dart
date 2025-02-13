import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    this.obscureText = false,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon, color: Colors.white),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
      ),
      style: const TextStyle(color: Colors.white),
      validator: validator,
    );
  }
}