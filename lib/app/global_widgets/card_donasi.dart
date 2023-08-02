import 'package:flutter/material.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:trashure/constant.dart';

Widget cardDonasi(String imgUrl, title, date, location) {
  return Padding(
    padding: const EdgeInsets.only(bottom: mediumPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              width: 130,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(smallPadding),
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(width: mediumPadding),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: customTextSTyle(16.0, black, FontWeight.w600)),
                  const SizedBox(height: extraSmallPadding),
                  Text(date,
                      style: customTextSTyle(16.0, black, FontWeight.w400)),
                  const SizedBox(height: extraSmallPadding),
                  Container(
                      height: 5.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: RDottedLineBorder(
                        bottom: const BorderSide(color: lightGrey),
                      ))),
                  const SizedBox(height: extraSmallPadding),
                  Text(location,
                      style: customTextSTyle(16.0, black, FontWeight.w400)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: smallPadding),
        Container(
          height: 2.0,
          width: double.infinity,
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: lightGrey,
            width: 1.0,
          ))),
        )
      ],
    ),
  );
}
