import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget buttonAdd(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: largePadding),
    child: Align(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(mediumRounded),
            ),
            elevation: 3,
            backgroundColor: yellow,
            padding: const EdgeInsets.symmetric(
                horizontal: largePadding, vertical: smallPadding),
          ),
          child: Text(
            text,
            style: customTextSTyle(16.0, black, FontWeight.w600),
          )),
    ),
  );
}
