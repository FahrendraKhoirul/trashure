import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/card_label.dart';
import 'package:trashure/app/global_widgets/card_list_detail.dart';
import 'package:trashure/constant.dart';

import '../controllers/detail_donasi_controller.dart';

class DetailDonasiView extends GetView<DetailDonasiController> {
  const DetailDonasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar(""),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: largePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardLabel(Icons.card_giftcard, "Donasi"),
                const SizedBox(height: mediumPadding),
                Container(
                  height: 255,
                  width: Get.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(largeRounded),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://jualbelilaptop.id/wp-content/uploads/2020/08/unnamed-47.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: largePadding),
                Text(
                  "Sofa Bekas",
                  style: customTextSTyle(20.0, black, FontWeight.w600),
                ),
                const SizedBox(height: smallPadding),
                Text(
                  "9 November 2022",
                  style: customTextSTyle(16.0, grey, FontWeight.w600),
                ),
                const SizedBox(height: mediumPadding),
                cardListDetail(Icons.call_outlined, "+6289123987456"),
                cardListDetail(Icons.location_on, "Lowokwaru, Malang"),
                const SizedBox(height: smallPadding),
                Text(
                  "Deskripsi",
                  style: customTextSTyle(16.0, black, FontWeight.w600),
                ),
                const SizedBox(height: smallPadding),
                Text(
                  "Sofa masih bagus, lecet dikit ga ngaruh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in sem nisl. Curabitur est libero, lacinia at urna in, porta laoreet purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ",
                  style: customTextSTyle(14.0, black, FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: extraLargePadding),
              ],
            ),
          ),
        ));
  }
}
