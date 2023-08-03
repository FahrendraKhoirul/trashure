import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/card_label.dart';
import 'package:trashure/constant.dart';

import '../controllers/detail_aduan_controller.dart';

class DetailAduanView extends GetView<DetailAduanController> {
  const DetailAduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(""),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: largePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardLabel(Icons.announcement, "Aduan"),
                const SizedBox(height: mediumPadding),
                Container(
                  height: 255,
                  width: Get.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(largeRounded),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.rd.com/wp-content/uploads/2020/03/GettyImages-1147902353-scaled.jpg?resize=700,466"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: largePadding),
                Text(
                  "24 Juli 2023",
                  style: customTextSTyle(20.0, black, FontWeight.w600),
                ),
                const SizedBox(height: regularPadding),
                Text("Aduan Oleh",
                    style: customTextSTyle(14.0, grey, FontWeight.w400)),
                const SizedBox(height: extraSmallPadding),
                Row(
                  children: [
                    const Icon(Icons.person_2_outlined, color: black, size: 18),
                    const SizedBox(width: extraSmallPadding),
                    Text(
                      "Tatang Sutarman",
                      style: customTextSTyle(14.0, black, FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: smallPadding),
                Text("Lokasi",
                    style: customTextSTyle(14.0, grey, FontWeight.w400)),
                const SizedBox(height: extraSmallPadding),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: black, size: 18),
                    const SizedBox(width: extraSmallPadding),
                    Text(
                      "Lowokwaru, Malang",
                      style: customTextSTyle(14.0, black, FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: mediumPadding),
                Text(
                  "Tentang Aduan",
                  style: customTextSTyle(16.0, black, FontWeight.w600),
                ),
                const SizedBox(height: smallPadding),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in sem nisl. Curabitur est libero, lacinia at urna in, porta laoreet purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc dignissim nisl mi, ac ullamcorper lectus vulputate vel. Nulla facilisi. ",
                  style: customTextSTyle(14.0, black, FontWeight.w400),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ));
  }
}
