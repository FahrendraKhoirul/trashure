import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget textFieldIcon(IconData icon, String text, VoidCallback onTap) {
  return TextField(
    onTap: onTap,
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: black, size: 20.0),
      contentPadding: const EdgeInsets.symmetric(vertical: smallPadding),
      hintText: text,
      hintStyle: customTextSTyle(16.0, black, FontWeight.w600),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: lightGrey),
      ),
    ),
  );
}
