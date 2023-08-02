import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Padding textFieldBasic(String label, placeholder) {
  return Padding(
    padding: const EdgeInsets.only(bottom: regularPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: customTextSTyle(14.0, grey, FontWeight.w600)),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: smallPadding),
            hintText: placeholder,
            hintStyle: customTextSTyle(16.0, black, FontWeight.w600),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: lightGrey),
            ),
          ),
        ),
      ],
    ),
  );
}
