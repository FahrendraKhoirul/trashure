import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Container cardLabel(IconData icon, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(
        horizontal: regularPadding, vertical: extraSmallPadding),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(smallRounded), color: yellow),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [ 
        Icon(icon, color: black, size: 18),
        const SizedBox(width: extraSmallPadding),
        Text(text, style: customTextSTyle(14.0, black, FontWeight.w600))
      ],
    ),
  );
}
