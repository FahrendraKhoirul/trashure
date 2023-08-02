import 'package:flutter/material.dart';
import 'package:trashure/constant.dart';

Widget cardAds({
  // make parameter with default values
  String image =
      'https://lelogama.go-jek.com/post_featured_image/optimalisasi-penjualan-le-minerale-Bahasa.jpg',
  String title = 'WinWithGojek',
  String description =
      'Kembangkan Kampanye GoFood ke Level Berikutnya dengan GoBiz Ads.',
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(largeRounded),
    child: Container(
      decoration: BoxDecoration(boxShadow: [cardShadow]),
      child: Column(
        children: [
          Image.network(
            image,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(regularPadding),
            color: white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: customTextSTyle(16, black, FontWeight.w700),
                ),
                const SizedBox(
                  height: extraSmallPadding,
                ),
                Text(
                  description,
                  style: customTextSTyle(14, grey, FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
