import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

GestureDetector customIconButton(
    String icon, String title, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        Container(
          child: Image.asset(
            icon,
            width: 50,
          ),
        ),
        SizedBox(
          height: smallPadding,
        ),
        Text(
          title,
          style: customTextSTyle(14, black, FontWeight.w500),
        )
      ],
    ),
  );
}
