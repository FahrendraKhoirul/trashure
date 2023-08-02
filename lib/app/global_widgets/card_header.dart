import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget cardHeader(
    String icon, title, desc, buttonText, VoidCallback onPressed) {
  return Container(
    padding: const EdgeInsets.all(mediumPadding),
    decoration: BoxDecoration(
        color: white,
        boxShadow: [cardShadow],
        borderRadius: BorderRadius.circular(largeRounded)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(icon, width: 60),
        const SizedBox(width: regularPadding),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: customTextSTyle(18.0, black, FontWeight.w600)),
              const SizedBox(height: smallPadding),
              Text(
                desc,
                style: customTextSTyle(16.0, grey, FontWeight.w500),
              ),
              const SizedBox(height: smallPadding),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: yellow,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(mediumRounded),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: mediumPadding,
                          vertical: extraSmallPadding)),
                  child: Text(
                    buttonText,
                    style: customTextSTyle(16.0, black, FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
