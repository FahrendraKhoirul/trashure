import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget cardHeader() {
  return Container(
    padding: const EdgeInsets.all(mediumPadding),
    decoration: BoxDecoration(
        color: white,
        boxShadow: [cardShadow],
        borderRadius: BorderRadius.circular(largeRounded)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/icons/icon_donasi.png", width: 60),
        const SizedBox(width: smallPadding),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mau berdonasi?",
                  style: customTextSTyle(18.0, black, FontWeight.w600)),
              const SizedBox(height: smallPadding),
              const Text(
                  "Donasikan barang bekasmu yang masih layak digunakan, banyak diluar sana yang membutuhkan."),
              const SizedBox(height: mediumPadding),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Buat Donasi",
                    style: customTextSTyle(16.0, black, FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: yellow,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(mediumRounded),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: mediumPadding,
                          vertical: extraSmallPadding)),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
