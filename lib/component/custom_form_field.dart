import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final TextInputType textInputType;
  final IconData icon;

  CustomFormField({
    this.controller,
    this.label,
    this.hint,
    this.textInputType,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            icon: icon != null ? Icon(icon) : null,
            labelText: label,
            hintText: hint),
        style: TextStyle(
          fontSize: 16,
        ),
        keyboardType: textInputType,
      ),
    );
  }
}
