import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget cardListDetail(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: smallPadding),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(regularPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(smallRounded),
              color: lightYellow),
          child: Icon(icon, color: yellow, size: 20),
        ),
        const SizedBox(width: smallPadding),
        Text(
          text,
          style: customTextSTyle(16.0, black, FontWeight.w500),
        )
      ],
    ),
  );
}
