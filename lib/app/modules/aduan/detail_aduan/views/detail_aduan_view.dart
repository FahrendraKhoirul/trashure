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
        backgroundColor: white,
        appBar: customAppBar(""),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: largePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardLabel(Icons.announcement_outlined, "Aduan"),
                const SizedBox(height: mediumPadding),
                Text(
                  "20 April 2023",
                  style: customTextSTyle(20.0, black, FontWeight.w600),
                ),
                const SizedBox(height: regularPadding),
                Container(
                  height: 255,
                  width: Get.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(largeRounded),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://media.npr.org/assets/img/2012/10/28/trash2-614f006a7e1d70a7fee7c5d5a92788107dd0c8a7.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: mediumPadding),
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
                      "Klojen, Malang",
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
