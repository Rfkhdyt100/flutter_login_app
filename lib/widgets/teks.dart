import 'package:flutter/material.dart';
import 'package:flutter_login/models/warna.dart';

class Text extends StatelessWidget {
  final String hint;
  final IconData prefixIcon;
  final bool isPassword;

  const Text({
    Key? key,
    required this.hint,
    required this.prefixIcon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(prefixIcon, color: AppColors.primary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.inputBackground,
      ),
    );
  }
}
