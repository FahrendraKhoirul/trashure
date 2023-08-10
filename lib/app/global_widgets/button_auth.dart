import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget buttonAuth(
    BuildContext context, String text, double width, VoidCallback action) {
  return Container(
    width: width,
    height: 58,
    decoration: BoxDecoration(boxShadow: [buttonShadow]),
    child: ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
          backgroundColor: black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
      child: Text(text, style: customTextSTyle(16.0, white, FontWeight.w600)),
    ),
  );
}
